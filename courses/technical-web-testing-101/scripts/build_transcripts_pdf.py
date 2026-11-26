"""Build exports/transcripts.pdf from transcripts.md and its local illustrations.

From the course folder, install scripts/requirements-pdf.txt, then run:
python scripts/build_transcripts_pdf.py
The parser follows this course's numbered sections, chapters and summary labels.
"""
from pathlib import Path
import argparse
import html
import math
import os
import re
import xml.etree.ElementTree as ET
from reportlab.platypus import BaseDocTemplate,PageTemplate,Frame,Paragraph,Spacer,PageBreak,KeepTogether,Image,HRFlowable
from reportlab.platypus.tableofcontents import TableOfContents
from reportlab.lib import colors
from reportlab.lib.styles import ParagraphStyle
from reportlab.lib.enums import TA_LEFT
from reportlab.lib.pagesizes import A4
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.graphics.shapes import Drawing, Rect, Line, Polygon, String

parser=argparse.ArgumentParser(description=__doc__,formatter_class=argparse.RawDescriptionHelpFormatter)
parser.add_argument('--source',type=Path,default=Path(__file__).resolve().parent.parent/'transcripts.md',help='Markdown source (default: transcripts.md in the course folder)')
parser.add_argument('--output',type=Path,help='PDF destination (default: exports/<source-name>.pdf)')
parser.add_argument('--font-dir',type=Path,default=Path(os.environ.get('WINDIR','C:/Windows'))/'Fonts',help='Folder containing Arial TTF files; otherwise use built-in Helvetica')
args=parser.parse_args()
SOURCE=args.source.resolve()
COURSE=SOURCE.parent
OUTPUT=args.output.resolve() if args.output else COURSE/'exports'/SOURCE.with_suffix('.pdf').name

def read_markdown(source):
    """Read the course Markdown itself; no intermediate JSON or video files."""
    sections=[];preface=[];section=None;chapter=None;mode='preface';last_figure=None
    for block in re.split(r'\n\s*\n',source.read_text(encoding='utf-8')):
        block=block.strip()
        if not block or re.fullmatch(r'<a\s+id="[^"]+"></a>',block):continue
        if block.startswith('# '):continue
        if block=='## Contents':mode='contents';continue
        section_heading=re.fullmatch(r'## (\d+)\. (.+)',block)
        chapter_heading=re.fullmatch(r'### (\d+)\.(\d+) (.+)',block)
        if section_heading:
            section={'number':int(section_heading[1]),'title':section_heading[2],'summary':[],'chapters':[]}
            sections.append(section);chapter=None;mode='section';continue
        if chapter_heading:
            if section is None or int(chapter_heading[1])!=section['number']:raise ValueError('Chapter outside its numbered section')
            number=int(chapter_heading[2])
            chapter={'id':f"{section['number']:02d}-{number:02d}",'number':number,'title':chapter_heading[3],'summary':[],'paragraphs':[],'figures':[]}
            section['chapters'].append(chapter);mode='chapter';continue
        if mode=='preface':preface.append(block);continue
        if mode=='contents':continue
        if block=='**Section summary**':mode='section-summary';continue
        if block=='**Chapter summary**':mode='chapter-summary';continue
        if block=='**Transcript**':mode='transcript';continue
        video=re.fullmatch(r'\[Watch this chapter in the video\]\((https://[^)]+)\)',block)
        if video and chapter is not None:chapter['video_url']=video[1];continue
        if mode in ('section-summary','chapter-summary'):
            items=block.splitlines()
            if not all(x.startswith('- ') for x in items):raise ValueError(f'Expected summary bullets: {block[:80]}')
            target=section['summary'] if mode=='section-summary' else chapter['summary']
            target.extend(x[2:] for x in items);continue
        figure=re.fullmatch(r'!\[([^\]]*)\]\(([^)]+)\)',block)
        if figure and chapter is not None:
            last_figure={'file':figure[2],'caption':figure[1],'after_paragraph':len(chapter['paragraphs'])-1}
            if last_figure['after_paragraph']<0:raise ValueError('Place an illustration after its introductory paragraph')
            chapter['figures'].append(last_figure);continue
        caption=re.fullmatch(r'\*Figure (\d+)\. (.*)\*',block)
        if caption and last_figure is not None:
            last_figure.update(number=int(caption[1]),caption=caption[2]);last_figure=None;continue
        if mode=='transcript' and chapter is not None:chapter['paragraphs'].append(block);continue
        raise ValueError(f'Unrecognised course Markdown block: {block[:100]}')
    intro=next((b for b in preface if not b.startswith(('[','Copyright','*')) and len(b.split())>20),'')
    if not sections:raise ValueError('Expected numbered course section headings')
    for section in sections:
        if not section['chapters']:raise ValueError('Section has no chapters')
        for chapter in section['chapters']:
            if not chapter.get('video_url') or not chapter['paragraphs']:raise ValueError('Chapter needs a video link and transcript')
            if any('number' not in f for f in chapter['figures']):raise ValueError('Illustration needs its Figure caption')
    return {'intro':intro,'sections':sections}

edition=read_markdown(SOURCE)
OUTPUT.parent.mkdir(parents=True,exist_ok=True)
font_files=[('Arial','arial.ttf','Helvetica'),('Arial-Bold','arialbd.ttf','Helvetica-Bold'),('Arial-Italic','ariali.ttf','Helvetica-Oblique'),('Arial-BoldItalic','arialbi.ttf','Helvetica-BoldOblique')]
have_arial=all((args.font_dir/file).is_file() for _,file,_ in font_files)
for name,file,fallback in font_files:
    if have_arial:pdfmetrics.registerFont(TTFont(name,str(args.font_dir/file)))
    else:pdfmetrics.registerFont(pdfmetrics.Font(name,fallback,'WinAnsiEncoding'))
pdfmetrics.registerFontFamily('Arial',normal='Arial',bold='Arial-Bold',italic='Arial-Italic',boldItalic='Arial-BoldItalic')
RED=colors.HexColor('#b5121b');INK=colors.HexColor('#171717');GREY=colors.HexColor('#555555');YELLOW=colors.HexColor('#fff8ce')
PAGE_W,PAGE_H=A4;LEFT=50;RIGHT=50;TOP=52;BOTTOM=48;WIDTH=PAGE_W-LEFT-RIGHT

def clean(text):
    return text.translate(str.maketrans({'\u2011':'-','\u2013':'-','\u2014':'-','\u2212':'-'}))
def escaped(text):return html.escape(clean(text),quote=False)
def p(text,style):
    markup=escaped(text)
    markup=re.sub(r'`([^`]+)`',r'<font name="Courier">\1</font>',markup)
    markup=re.sub(r'\*\*([^*]+)\*\*',r'<b>\1</b>',markup)
    markup=re.sub(r'(?<!\*)\*([^*]+)\*(?!\*)',r'<i>\1</i>',markup)
    markup=re.sub(r'\[([^\]]+)\]\((https?://[^)]+)\)',r'<link href="\2" color="#b5121b">\1</link>',markup)
    return Paragraph(markup,style)

def svg_drawing(source):
    """Draw this course's rectangles, lines, text and arrow markers as vectors.

    This intentionally supports the SVG vocabulary of the local course diagrams,
    rather than silently dropping shapes from arbitrary, more complex artwork.
    """
    root=ET.parse(source).getroot()
    vx,vy,width,height=map(float,root.attrib['viewBox'].split())
    if vx or vy:raise ValueError('SVG viewBox must start at 0,0')
    drawing=Drawing(width,height)
    markers={m.attrib['id']:m for m in root.iter() if m.tag.rsplit('}',1)[-1]=='marker'}
    def colour(value):
        if value=='none':return None
        if re.fullmatch(r'#[0-9a-fA-F]{3}',value):value='#'+''.join(char*2 for char in value[1:])
        return colors.toColor(value)
    def arrow(marker_ref,x,y,ux,uy,stroke_width):
        marker_id=marker_ref.removeprefix('url(#').removesuffix(')')
        marker=markers[marker_id];path=next(iter(marker))
        if path.tag.rsplit('}',1)[-1]!='path' or re.sub(r'\s+',' ',path.attrib.get('d','')).strip()!='M 0 0 L 10 5 L 0 10 z':
            raise ValueError(f'Unsupported arrow marker in {source.name}')
        scale=float(marker.attrib.get('markerWidth',8))*stroke_width/10
        refx=float(marker.attrib.get('refX',9));refy=float(marker.attrib.get('refY',5))
        points=[]
        for px,py in [(10,5),(0,0),(0,10)]:
            along=(px-refx)*scale;across=(py-refy)*scale
            points.extend([x+ux*along-uy*across,y+uy*along+ux*across])
        drawing.add(Polygon(points,fillColor=colour(path.attrib.get('fill','#ffdf00')),strokeColor=None))
    def visit(node,inherited):
        tag=node.tag.rsplit('}',1)[-1]
        if tag in ('title','desc','defs'):return
        attrs={**inherited,**node.attrib}
        if 'transform' in node.attrib:raise ValueError(f'Unsupported SVG transform in {source.name}')
        fill=colour(attrs.get('fill','#000000'));stroke=colour(attrs.get('stroke','none'));sw=float(attrs.get('stroke-width',1))
        if tag in ('svg','g'):
            for child in node:visit(child,attrs)
        elif tag=='rect':
            x,y,w,h=[float(attrs.get(k,0)) for k in ('x','y','width','height')]
            drawing.add(Rect(x,height-y-h,w,h,rx=float(attrs.get('rx',0)),ry=float(attrs.get('ry',attrs.get('rx',0))),fillColor=fill,strokeColor=stroke,strokeWidth=sw))
        elif tag=='line':
            x1,y1,x2,y2=[float(attrs[k]) for k in ('x1','y1','x2','y2')];y1=height-y1;y2=height-y2
            line=Line(x1,y1,x2,y2,strokeColor=stroke,strokeWidth=sw)
            if 'stroke-dasharray' in attrs:line.strokeDashArray=[float(x) for x in attrs['stroke-dasharray'].replace(',',' ').split()]
            drawing.add(line)
            length=math.hypot(x2-x1,y2-y1)
            if length:
                ux,uy=(x2-x1)/length,(y2-y1)/length
                if 'marker-end' in attrs:arrow(attrs['marker-end'],x2,y2,ux,uy,sw)
                if 'marker-start' in attrs:arrow(attrs['marker-start'],x1,y1,-ux,-uy,sw)
        elif tag=='text':
            text=''.join(node.itertext())
            if not have_arial:text=text.replace('→',' > ')
            drawing.add(String(float(attrs['x']),height-float(attrs['y']),text,fontName='Arial',fontSize=float(attrs.get('font-size',20)),textAnchor=attrs.get('text-anchor','start'),fillColor=fill))
        else:raise ValueError(f'Unsupported SVG element {tag} in {source.name}')
    visit(root,{})
    return drawing

STYLES={
 'body':ParagraphStyle('Body',fontName='Arial',fontSize=10.8,leading=15.4,textColor=INK,spaceAfter=7.5,allowWidows=0,allowOrphans=0),
 'section':ParagraphStyle('Section',fontName='Arial-Bold',fontSize=21,leading=26,textColor=RED,spaceAfter=13,keepWithNext=True),
 'chapter':ParagraphStyle('Chapter',fontName='Arial-Bold',fontSize=14.4,leading=18.5,textColor=INK,spaceBefore=17,spaceAfter=7,keepWithNext=True),
 'label':ParagraphStyle('Label',fontName='Arial-Bold',fontSize=9.3,leading=13,textColor=RED,spaceBefore=5,spaceAfter=4,keepWithNext=True),
 'bullet':ParagraphStyle('Bullet',fontName='Arial',fontSize=10.0,leading=14.2,textColor=INK,leftIndent=13,firstLineIndent=0,bulletIndent=1,spaceAfter=3,allowWidows=0,allowOrphans=0),
 'video':ParagraphStyle('Video',fontName='Arial',fontSize=9.3,leading=13,textColor=RED,spaceAfter=7,keepWithNext=True),
 'caption':ParagraphStyle('Caption',fontName='Arial-Italic',fontSize=9.1,leading=12.4,textColor=GREY,spaceBefore=5,spaceAfter=13,allowWidows=0,allowOrphans=0),
 'cover':ParagraphStyle('Cover',fontName='Arial-Bold',fontSize=37,leading=43,textColor=INK,spaceAfter=18),
 'subtitle':ParagraphStyle('Subtitle',fontName='Arial',fontSize=19,leading=26,textColor=RED,spaceAfter=20),
 'small':ParagraphStyle('Small',fontName='Arial',fontSize=10,leading=15,textColor=GREY,spaceAfter=12),
 'toc':ParagraphStyle('TOC0',fontName='Arial',fontSize=11,leading=16,leftIndent=0,firstLineIndent=0,spaceBefore=7,rightIndent=25),
}

class Book(BaseDocTemplate):
    def afterFlowable(self,flowable):
        if hasattr(flowable,'bookmark_id'):
            self.canv.bookmarkPage(flowable.bookmark_id)
            title=flowable.outline_title
            self.canv.addOutlineEntry(clean(title),flowable.bookmark_id,level=flowable.outline_level,closed=flowable.outline_level==0)
            if getattr(flowable,'toc_entry',False):self.notify('TOCEntry',(0,clean(title),self.page,flowable.bookmark_id))

def page_decoration(c,doc):
    c.saveState()
    if doc.page>1:
        c.setStrokeColor(colors.HexColor('#dddddd'));c.setLineWidth(0.5)
        c.line(LEFT,PAGE_H-35,PAGE_W-RIGHT,PAGE_H-35)
        c.setFont('Arial',8);c.setFillColor(GREY)
        c.drawString(LEFT,PAGE_H-27,'Technical Web Testing 101 - Edited Course Transcript')
    c.setFillColor(GREY);c.setFont('Arial',8)
    c.drawString(LEFT,25,'Alan Richardson')
    c.drawRightString(PAGE_W-RIGHT,25,str(doc.page))
    c.restoreState()

book=Book(str(OUTPUT),pagesize=A4,leftMargin=LEFT,rightMargin=RIGHT,topMargin=TOP,bottomMargin=BOTTOM,title='Technical Web Testing 101 - Complete Course Transcript',author='Alan Richardson',subject='Edited course transcript with section and chapter summaries',pageCompression=1)
book.addPageTemplates(PageTemplate(id='Reading',frames=[Frame(LEFT,BOTTOM,WIDTH,PAGE_H-TOP-BOTTOM,leftPadding=0,rightPadding=0,topPadding=0,bottomPadding=0)],onPage=page_decoration))
story=[]
chapter_count=sum(len(s['chapters']) for s in edition['sections'])
story.extend([Spacer(1,58),p('Technical Web Testing 101',STYLES['cover']),p('Complete Course Transcript',STYLES['subtitle']),p('Alan Richardson',STYLES['body']),p('Edited reading edition',STYLES['small']),HRFlowable(width='100%',thickness=3,color=RED,spaceBefore=20,spaceAfter=23),p(f"{len(edition['sections'])} sections / {chapter_count} chapters",STYLES['body']),p(edition['intro'],STYLES['small'])])
story.append(Paragraph('<link href="https://www.youtube.com/watch?v=jWwfMo5Ziz0" color="#b5121b">Watch the full course</link><br/><link href="https://www.eviltester.com/page/onlinetraining/techwebtesting101/" color="#b5121b">Course information</link>',STYLES['small']))
story.extend([Spacer(1,24),p('Copyright © Alan Richardson. Free to use for personal study.',STYLES['small']),PageBreak(),p('Contents',STYLES['section'])])
toc=TableOfContents();toc.levelStyles=[STYLES['toc']];toc.dotsMinLevel=0;story.append(toc)

image_count=0
for section in edition['sections']:
    if section['number']==1:story.append(PageBreak())
    heading=p(f"{section['number']}. {section['title']}",STYLES['section'])
    heading.bookmark_id=f"section-{section['number']:02d}";heading.outline_title=f"{section['number']}. {section['title']}";heading.outline_level=0;heading.toc_entry=True
    section_opening=([Spacer(1,18)] if section['number']>1 else [])+[heading,p('Section summary',STYLES['label'])]
    for item in section['summary']:section_opening.append(Paragraph(escaped(item),STYLES['bullet'],bulletText='•'))
    section_opening.append(Spacer(1,7))
    for chapter_index,chapter in enumerate(section['chapters']):
        title=f"{section['number']}.{chapter['number']} {chapter['title']}"
        heading=p(title,STYLES['chapter']);heading.bookmark_id='chapter-'+chapter['id'];heading.outline_title=title;heading.outline_level=1
        opening=([*section_opening] if chapter_index==0 else [])+[heading]
        opening.append(Paragraph(f'<link href="{html.escape(chapter["video_url"],quote=True)}" color="#b5121b">Watch this chapter in the video</link>',STYLES['video']))
        summary=[p('Chapter summary',STYLES['label'])]+[Paragraph(escaped(item),STYLES['bullet'],bulletText='•') for item in chapter['summary']]
        opening.extend(summary)
        opening.extend([p('Transcript',STYLES['label']),p(chapter['paragraphs'][0],STYLES['body'])])
        story.append(KeepTogether(opening))
        for number,paragraph in enumerate(chapter['paragraphs']):
            if number:story.append(p(paragraph,STYLES['body']))
            for fig in [f for f in chapter['figures'] if f['after_paragraph']==number]:
                original=COURSE/fig['file']
                source=original
                assert source.is_file(),source
                if source.suffix.lower()=='.svg':
                    image=svg_drawing(source)
                    factor=min(WIDTH/image.width,385/image.height)
                    image.scale(factor,factor);image.width*=factor;image.height*=factor
                else:
                    image=Image(str(source))
                    factor=min(WIDTH/image.imageWidth,385/image.imageHeight)
                    image.drawWidth=image.imageWidth*factor;image.drawHeight=image.imageHeight*factor
                image.hAlign='CENTER'
                caption=p(f"Figure {fig['number']}. {fig['caption']}",STYLES['caption'])
                story.append(KeepTogether([Spacer(1,5),image,caption]));image_count+=1

book.multiBuild(story)
print(f'Created {OUTPUT}: {len(edition["sections"])} sections, {chapter_count} chapters, {image_count} illustrations.')
