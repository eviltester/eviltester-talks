# Notes from the Presentation Source

Prepared speaker notes retained from the original presentation. These are preparation materials, not a transcript. Slide numbers refer to the Markdown deck and matching PDF in this folder.

## Slide 1 - Thinking Visually In Software Testing

Some of you will be thinking “Where are all the pictures?”

I want to challenge the basic assumption that “thinking visually” means drawing pictures on paper. And we'll cover this later, but I want to challenge you to expand the way you think and to visualise your testing strategies and present them to people so that they can visualise and understand what you are doing.

It is important that we focus on the process of strategising and thinking, using our imaginative and visual faculties to their fullest, rather than the output of the strategising process as something which visually represents the strategy i.e. a document.

My name is Alan Richardson, I blog at eviltester.com

--&gt;

## Slide 2 - What's this all about?

Fundamentally This is all about using visual tools and techniques to aid your thought process, to make your thought process visual and help you provide feedback to yourself, and to aid the communication of your thought process to others.

That's what I'm using visual to mean, the ability to see what people are doing/thinking/meaning.

To help people get “the big picture”, and see “what your doing”

## Slide 3 - “I would rather see your thinking, than see what you think your thinking should look like”

By this I mean... I want to see that you are thinking, that you are putting more effort into the thought process than you are into the documentation process that you believe is required to convince me to buy into it.

I see too many people “thinking” about their test approach, but their not really thinking about their test approach, their thinking how can I fill in this template, how can I pad out the time before I get my hands on the software, how can I get through the review process to allow me to get started.

Thinking about what you are going to do, and following the documentation processes in your organisation are different things.

If you don't think in the first place, your communication will be unclear, and won't convince.

---&gt;

## Slide 4 - An adhoc example of Thinking Visually

So let's start with an example. And look at an adhoc, a “for the specific purpose, case, or situation at hand and for no other”, an adhoc approach I took, where I was thinking visually.

Everyone has seen the google interface. I'm not going show you a screenshot of it. I'm going to show you how I spent 5 minutes and visually modelled my thinking.

## Slide 5 - Google search - visual testing notes

I sat down for 5 minutes and thought about how I could test this web app.

This is my visual strategy. Its visual, look there's a picture. And words, there a lot of words. But my handwriting is so unique that you might not be able to interpret them, so you can see them as little scribble doodles.

I'm claiming that this is a visual representation of the output of my thought process. It can act as an aid to my future thought processes as I test this. And if I had to I could communicate my thought process based on this. --&gt;

## Slide 6 - Google search - redirects

So let's zoom in on some of this.

Here, and if you can't read the writing don't worry, this is an illustration to support my verbal communication.

When I go to google.com from the uk I get redirected to google.co.uk. That seems like something I might want to test. How is it done? Is it based on my IP Address, is it based on http headers that the browser sends?

I don't know, but I'm thinking, can I demonstrate situations where this works, can I exploit it and make it think I'm somewhere that I'm not.

## Slide 7 - Google search - search controls

And zooming in on the main search box. This is where most people would start, and you can see that I am thinking that I can search by pressing return, by pressing tab and return when the search button is selected.

I can search by clicking on the Search button.

I was doing this in Firefox, and the particular version of firefox I was using from the location that I was testing, didn't show me the Ajax drop down I was expecting, I got the browser “historic entries” drop down. So I'm wondering what triggers that.

You can see I've made notes on the input scope. All I've written down are notes to thinking about the values, and the length, and I would expand this later in a text editor or a mind map because I'd want to start exploring categories and relationships in the test ideas that I come up with, and I'd find it faster to do that using a different tool. But I've got a visual representation of my high level strategy here.

## Slide 8 - Google search - server calls

I've also made notes that the request is going to the server. So I will want to have my test strategy encompass under the GUI messaging direct to the server.

I'm thinking about automating at this level, performance testing at this level.

There is a whole aspect of the strategy that is hidden beneath or within this visual representation that I'm going to have to decompose this into further representations. But this small chunk is an illustration of a high level thought.

## Slide 9 - Google search - combined model

And you can see that I've barely scratched the surface of this. There is enough information here that I could keep myself busy for a day.

But if I had to communicate my strategy to someone quickly I could do so, based on this visual representation. This is good enough for me to continue to think about, step back and see the big picture and how things connect, and to communicate.

## Slide 10 - Adhoc Tooling

And I used Adhoc tools to do this.

I used pen and paper and scanned it in to my computer.

Now that I have a camera on my phone that's great I can take photos of my notes and whiteboards. I have evernote on my phone so I can synch those pictures into evernote and access them on my computer and edit them or print them out.

This is really low tech. I suggest that you examine the tools you already have. Because a lot of the time when people consider thinking visually they think about bigger and better tools. Better diagrammers, better auto layout and formatting in their mind map tool.

I am trying to model my thought process. And I'm such a simple thinker, I can use simple tools.

## Slide 11 - “Over the years I've moved from; starting with technology and looking for the one true formal representation; to an adhoc multi-view approach”

My background is in formal modelling and I still have a tendency to think about a technology solution and a single representation which I can derive other views from automatically. I still want that, that would be great. But I don't start there any more.

In times past I would have started with a mind map, and I would have created a Graphviz text file and written comments in there and created a flow diagram of state and data flows. And I would have done that right from the start.

If you haven't experimented with those tools yet, then I encourage you to do so, because then you'll know where they can fit into your visual thinking approach

## Slide 12 - What is this based on?

I'm not basing this on psychology, I'm basing this on experience.

I've been driven by trying to get my documentation as small and valuable as possible.

I want to have a process that supports self-reflection and self-feedback and editing.

I'm basing this on reading Systems Thinking where the books are filled with so many adhoc representations of systems and flows and relationships and alternative categorisations of models.

I'm basing this on my previous (and other people's) dreadful strategy and planning documentation that do not attempt to communicate thinking, they attempt to fit process or “get buy in”.

I wrote a tool for mainting lists, and hierarchies, and entities and flows. Because I wanted the ONE TOOL.. And now I use paper and pen, because I've learned more about how I work effectively.

And I've learned to read quickly, to pillage documents for information. And I want visual communication to support me in that.

## Slide 13 - Uncle Al's Slogans

My guiding principle, how little can I get away with , not “how much can I pad this out”. How quickly can I do this? How can I get the value out there as quickly as possible, and then spend more time on it to maximise value as required.

Make templates work for you, rather than you working for the template.

Put important things first so that if a manager accidentally walks into the room as you present the strategy, not realising that it is a strategy review and they start backing away from the horror. You want the important things first, fast and obvious so that they have no choice but to have grasped your strategy within the 10 seconds that they were in the room.

And summarise for the reader, meet the reader's needs. How many times have you read a summary that basically describes the title at the top of the page and says that “This is the test strategy for project XY”, when you already knew that because you saw the title and you don't wait for the summary to tell you what document you are reading.

Meet the reader's needs, not what you think the reader wants to see, and sometimes that means challenging what they have told you they think they need.

## Slide 14 - Document Examples

And just to show you that I do this.

Here are some real life examples.

I'm not suggesting these are great examples. These were done years ago. I only recently had to write a strategy document again. I've managed to get away with about 3 years of creating models on wiki pages and communicating in person with people.

But even when these documents were written 8 years or so ago I was experimenting with different styles of communication. And I'm using these because these were my first steps away from word heavy formal template docs.

## Slide 15 - Document example - test conditions and data

This is redacted but I want you to view it as a picture and you can see a state model and flow of data.

And then I've used tables to illustrate data, and outlines to organise.

This is a really concise distillation of a test data approach which encourages a mental visual rendering of the data.

And it was adhoc, as required, for a specific need. It wasn't template driven.

## Slide 16 - Document example - process model

This one shows that I started with the model, a diagram, and pasted it into a document in context, with a box out to make things important.

And I've underlined parts to draw people's attention to stuff.

## Slide 17 - Document example - test scenario planning

Here I'm mixing diagrams and models, tables, and different page orientation.

I've reused the same 'diagram' but with different annotations to convey a different part of the model.

I'm trying to communicate the thought processes and models as effectively as I can. In as varied a way as is required.

## Slide 18 - How not to think visually

So let's look at how not to think visually -&gt;&gt;

## Slide 19 - I was taught how to not do this

I was taught how not to do this. You may have had a schooling like mine which taught us not to think and communicate visually. If you go through this list, and you can read it faster than I can talk about it. If you have any of these beliefs then shake them off.

I was taught that doodles are bad, that adhoc representations of an idea are bad. Not True.

I was taught that I couldn't draw. And that is not true, anyone can draw but we don't practice and modelling our thinking visually takes practice. Your first attempts will suck. Keep going.

I was taught that if I did it quickly it wasn't good. That goodness takes time and detail. If it was quick you haven't put enough thought in. Not True. We are really good at building the big picture, building the big picture quickly and modelling this and communicating it quickly is an art, and thats what we have to learn.

--&gt;

## Slide 20 - !... I was also taught

And the school system just keeps giving!

I was taught that we place value on the number of words and not the message. On the bigness and not the value.

We were taught “Big words good. Small words bad”. That business communication was formal and used complicated words. Have you seen docs that were filled with really complicated words when simple words would do? We were not taught that most business communication does not communicate and that most business communication is bad communication.

I learned formal diagramming as part of computer science. It doesn't matter that I've just used circles and lines.

Examine the things that you were taught and see if any of those things impact your ability to communicate effectively and quickly in your style.

## Slide 21 - I unlearned and focus on

I had to unlearn all that previous stuff and focussed on value. Refocus from templates and on giving that person what they need. Focus on the time and effort it is taking so that you maximise the value of the process.

I learned that communication is not what I give, it is what people take from what I present. So I have to help them take it.

Make your presentation novel so you communicat the important points.

Support peoples ability to remember, and design it to make it easy to read and easy to spot the gaps, to provide feedback. Not to swamp them with irrelevancy.

Make it flexible to support your thought processes as well as the communication process.

And there will be more, there will be elements that you identify when you start thinking about thinking visually.

## Slide 23 - How to trap your thinking and your reader

Great ways to trap your reader and yourself. In the normal way of presenting your thinking.

Big globs of text are great for hiding stuff in. Really smother the important points in an irrelevant forest of words. Don't format them in bold or anything to make the important bits stand out.

Having a summary that adds no value is a great way to convince your reader that your presentation is not worth reading or paying attention to. Many people have seen this so often that they are immune to this tactic, so you may have to use other techniques here to stop your reader thinking.

A template can really help increase the boredom factor, and If you have a lot of boilerplate text in the template then people can easily skip over important information that you buried in there.

To make sure you hide things, don't use call outs, or box outs, or bold or italics. Don't indent paragraphs. Try not to design the document for readability.

--&gt;

## Slide 24 - How to trap your thinking and your reader

You can see here I'm using a list. Lists are great for stopping thinking. Give people a numbered list with 5 items and there brain thinks “there are only 5 things” they won't look for number 6. bullet lists are not quite as limiting, but unless you put text around them to say e.g. or “and not limited to” people will stop thinking at the stuff in the list. Don't add questions in the list, that just encourages thought.

And make sure you copy and paste from other documents. In your strategy, copy in a diagram from the architecture diagram, but don't re-interpret it from a test point of view. Take it out of context so that people think “I've read that before” or if the do read it then they don't see any value and may stop reading other parts of your document.

I'm pretty sure if you go through your own documents with a sense of humour then you'll see plenty of irrelevant nonsense that adds no value. I did in mine.

--&gt;

## Slide 25 - Don't Believe me?

But if you don't believe me, and you shouldn't believe me, you should put everything I say to the test.

Here are some google searches you can do which will bring back some great examples and by great examples I mean truly dreadful documents. That have all the previous traits.

Summarise which, I don't know what they summarise.

Go through other people's examples, mock them mercilessly, then come back to your docs, see the same mistakes and that helps build up some humility and you can more readily spot the mistakes when you make them.

## Slide 27 - Quick tips to shake it up a bit

Start shaking up your thinking, do things differently.

Use space differently, examine what you do so that you do things differently, anything differently to force your brain to re-evaluate what you do.

## Slide 28 - My non-psychology based view

Words are pictures. What you are seeing on your screen now is a picture. We use other pictures called letters and organise them in a formal way to make other pictures to represent our word concepts. And to help remind us that these are concepts we reuse the same word to mean different things.

Everything has a visual impact when processed visually. So format your documents and notes as pictures.

We think to build up models and we use those models to communicate. Thinking is different. Thinking is for us. We Communicate for them.

Different models have different purposes. So experiment with them and learn to use them to support you effectively.

## Slide 29 - Lessons from rapid reading

I learned to read quickly. For a while I read a book a day. A book a day. You have to redefine 'reading' to read a book a day. I pillage books for value.

I learned that most words are padding, they are there to support a left to right, top to bottom flow. They are not there for information. They are there to carry you forward. Make it easy for people to skip the flow and land on the data.

I will look at the outline, the table of contents to see what is going on in your model, and get a big picture view. I focus on images, summaries and callouts because typically people have used them to make important parts stand out.

I'lll read the first and last paragraphs in chapters in the assumption that you'll set the scene and draw conclusions, and I'll read your document backwards when I do that too because I suspect your advanced stuff, the really juicy stuff is in the back.

And note the difference between illustrations and diagrams. Illustrations make it look nice and businessy. Diagrams add value in their own right. Figure out what helps you read quickly and then write that way. --&gt;

## Slide 30 - Obvious Thinking Tools First

This is the slide that I thought I would start with.

Mindmaps are great, I use them all the time. I use them as a memory aid, as a thinking tool, as a study aid, as an organisational outline tool. But they suck as a communication tool because they are so personal and they summarise at a high level.

A good diagram is a great concise representation of your thought model that stands alone and communciates your model.

Do you use logs? Logs are great. Logs are different from a linear document. They are a time based model of your thought process. You can reorganise it and reshape it later to remove the time relationship because the time relationship is important when collating, but not really for structuring. Never underestimate the value a simple text editor can bring to helping you think in a time based way --&gt;

## Slide 31 - Loosen Up... Think Spatially

So what do I mean by spatially?

## Slide 32 - Single Sheet Viewport to the Mind

Here is what the single sheet looked like as a log.

The time based relationship was lost as I collated the information spatially.

So you can see that my thinking was different from my end result which was a spatially collation model that I can also use for communication.

And keeping it on a single sheet is great for the big picture view. Particularly with an adhoc modelling approach.

I also use mindmaps for that big picture view because I can zoom in and out.

## Slide 33 - Think Spatially with Text Editors

I use space in text editors with indents and adhoc annotations to help me collate and model my thinking before I transform it into another representation for exploring my thoughts more deeply.

I use text editors a lot. I will make notes all over the place as a text canvas.

Don't rule out any tool.

## Slide 34 - Mind Map Tools for 'big picture' outlines

This is a mind map for this talk. It was great for structuring and thinking. But it sucked for flow. I adjusted the flow when I moved it into the story board, ie. The presentation tool.

Different tools support different styles of thinking and you will get different value as you use them.

## Slide 35 - A visual thinking process

Here is 'a' process you might use for thinking visually.

Collate your basic thoughts.

Structure it for the needs of the user or the next stage of thinking. You may have to transcribe your collation into another tool or representation to do this. The structure helps you think it through to get some sort of flow.

Then transcript it again, to lay it out, to support the use of the thoughts for the next stage in the thinking process. And communicate the important points easily.

## Slide 36 - Visualise the outcome, use, and consumer

Visualise the outcome of what you want this communication to do.

How do you want this to be used? That will change the visual model and time you spend on it.

And think about the person using it, or consuming it, so you can meet their needs. And remember that that person might be you, as you continue to augment your models and explore your thinking around them.

## Slide 37 - Why and how visually?

Big pictures are great for zooming in and out. For chunking up to higher levels and decomposing into more detail.

We may need to remodel and transform between models so think about.

Lists for low level detail.

Representing time in your models, as flow or logs.

Look at the attributes in the relationships. When you create a mindmap your default relationship is a parent child decomposition, but there are other relationships and you may need different visual models to draw those out.

Use space to make the important items visual, and give you room to jump about and flow through the model.

## Slide 38 - Tools to Experiment With

Now I'm going to spend the next 4 hours walking you through all these tools. OR, you can do that because I've rammed a lot of stuff into you over these 25 minutes.

This is the mandatory tools list. I have used all of these in various ways to support myself.

Build a list for yourself about what you already use, categorise them to see how you think about them, look for alternatives. And never rule out the use of prosaic, day to day, common tools like text editors. --&gt;

Your aim is to support your thought process, not to find the most cutting edge visual thinking tool. Because you already own the most cutting edge visual thinking tool, and that is your brain. All you need are ways of supporting it. --&gt;

## Slide 39 - “Think. Make your thinking visible. Communicate your thinking. And do it your way.”

So I leave you with a suggestion.

Think – you need to think. You must think. Don't think you can get away without thinking.

Make your thinking visible to you, so that you know you've gone through a thought process, and other people know you've thought about the process and haven't just filled in a template.

And communicate your thinking so that acts as a communication of what you think is important.

And most importantly of all. Do it your way.

I will leave it there. Thank you very much for your time. My name is Alan Richardson. --&gt;

## Slide 40 - eviltester.com

Be good.
