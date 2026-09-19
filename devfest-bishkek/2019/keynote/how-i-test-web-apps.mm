<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="How I test web applications" FOLDED="false" ID="ID_892524652" CREATED="1574685217196" MODIFIED="1574685231303" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="23" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Start" POSITION="right" ID="ID_1351487740" CREATED="1575289995962" MODIFIED="1576154303261">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;!-- footer: @EvilTester --&gt;
    </p>
    <p>
      &lt;!-- page_number: true --&gt;
    </p>
    <p>
      
    </p>
    <p>
      # A Guide to Testing Web Applications
    </p>
    <p>
      
    </p>
    <p>
      DevFest 14th Dec 2019 Bishkek
    </p>
    <p>
      
    </p>
    <p>
      https://www.eviltester.com/conference/devfestbishkek2019_conference
    </p>
    <p>
      
    </p>
    <p>
      ## Alan Richardson
    </p>
    <p>
      
    </p>
    <p>
      - EvilTester.com
    </p>
    <p>
      - @EvilTester
    </p>
    <p>
      - compendiumdev.co.uk
    </p>
    <p>
      - digitalonlinetactics.com
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      &gt; Have you ever wondered how other people test applications? Not in theory, but in practice? What thought processes are used? How did they model the application? What tools were used? How did they track the testing? That's what this talk is all about. This talk will be based on a short Case Study of testing an open source web application. Why open source? Because then there is no commercial confidentiality about the process, tools or thought processes. Alan will explain his thought processes, coverage, approaches, tools used, risks identified and results found. And generalise from this into reusable models and principles that can be applied to your testing. This covers the What?, and the Why? of practical exploratory web testing.
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="Introduction" POSITION="right" ID="ID_286792847" CREATED="1574775675897" MODIFIED="1575280828831">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # A 'micro' case study
    </p>
    <p>
      
    </p>
    <p>
      - This is a case study performed at a 'micro' level
    </p>
    <p>
      &#160;&#160;&#160;&#160;- equivalent to about a 'day' of Testing
    </p>
    <p>
      - Lessons and observations are extrapolated to a 'macro' level
    </p>
    <p>
      - Means that:
    </p>
    <p>
      &#160;&#160;&#160;- not all Testing Lessons will be discussed
    </p>
    <p>
      &#160;&#160;&#160;- the lessons mentioned, have context
    </p>
  </body>
</html>
</richcontent>
<node TEXT="a micro example to derive macro lessons" ID="ID_1740222028" CREATED="1574775695397" MODIFIED="1574775716235"/>
</node>
<node TEXT="Which app to choose?" POSITION="right" ID="ID_1936370857" CREATED="1574685431127" MODIFIED="1575284721390">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Which App to choose
    </p>
    <p>
      
    </p>
    <p>
      - Tracks
    </p>
    <p>
      - https://www.getontracks.org/
    </p>
    <p>
      - Web App, JS, API, DB
    </p>
    <p>
      - Offers a lot of scope for testing
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![](images/tracks-gui.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lesson
    </p>
    <p>
      
    </p>
    <p>
      - Normally we don't get to choose
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Or do we?
    </p>
    <p>
      -&#160;&#160;We need to allocate staff based on skills and experience,
    </p>
    <p>
      &#160;&#160;&#160;&#160;- not just availability
    </p>
    <p>
      - If we don't understand the technology
    </p>
    <p>
      &#160;&#160;&#160;&#160;- we need to manage that as a risk
    </p>
  </body>
</html>
</richcontent>
<node TEXT="normally we don&apos;t get a choice" ID="ID_875218294" CREATED="1574685457582" MODIFIED="1574685468242"/>
<node TEXT="or do we?" ID="ID_1157266883" CREATED="1574685469244" MODIFIED="1574685473917"/>
<node TEXT="staff up projects based on skills and experience,&#xa;not just availability" ID="ID_1447448396" CREATED="1574685474382" MODIFIED="1574685487730"/>
<node TEXT="choose technology that the team&#xa;understands and can work with" ID="ID_1439937903" CREATED="1574685488094" MODIFIED="1574685500917">
<node TEXT="or analyse the risk" ID="ID_1815568482" CREATED="1574685501215" MODIFIED="1574685508230"/>
</node>
</node>
<node TEXT="Environment" POSITION="right" ID="ID_878518390" CREATED="1574685968837" MODIFIED="1575281022800">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Environment
    </p>
    <p>
      
    </p>
    <p>
      Could use:
    </p>
    <p>
      
    </p>
    <p>
      - Docker
    </p>
    <p>
      - Local install
    </p>
    <p>
      - VM
    </p>
    <p>
      - Cloud hosted
    </p>
    <p>
      
    </p>
    <p>
      Each has different risks and constraints.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # My Environment Requirements
    </p>
    <p>
      
    </p>
    <p>
      - proxy traffic
    </p>
    <p>
      - possibly view DB
    </p>
    <p>
      - low impact on my machine
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Knowledge Constraints
    </p>
    <p>
      
    </p>
    <p>
      - My Tech knowledge of Docker
    </p>
    <p>
      - Lower Docker knowledge than VM
    </p>
    <p>
      - Know how to configure and access DB on VM
    </p>
    <p>
      - Chosen VM <a charset="utf-8" href="https://www.turnkeylinux.org/tracks">https://www.turnkeylinux.org/tracks</a>
    </p>
    <p>
      - Issue... old version of tracks
    </p>
    <p>
      &#160;&#160;&#160;&#160;- not a concern for this talk
    </p>
    <p>
      
    </p>
    <p>
      &lt;!--
    </p>
    <p>
      R00troot
    </p>
    <p>
      --&gt;
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lesson Environment Impacts Testing
    </p>
    <p>
      
    </p>
    <p>
      - Do staff have permissions?
    </p>
    <p>
      &#160;&#160;&#160;&#160;- to observe, interrogate, manipulate?
    </p>
    <p>
      - Does environment match deployment?
    </p>
    <p>
      - Does release process match live?
    </p>
    <p>
      - Version management
    </p>
    <p>
      &#160;&#160;&#160;&#160;- same as live?
    </p>
    <p>
      &#160;&#160;&#160;&#160;- can do upgrades?
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Install Session" ID="ID_1230160704" CREATED="1574868969724" MODIFIED="1575288313682"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Install Session
    </p>
    <p>
      
    </p>
    <p>
      ~~~
    </p>
    <p>
      # Install Session
    </p>
    <p>
      
    </p>
    <p>
      20191125 10:00
    </p>
    <p>
      
    </p>
    <p>
      * download vm https://www.turnkeylinux.org/tracks
    </p>
    <p>
      * install tracks
    </p>
    <p>
      * 192.168.1.36
    </p>
    <p>
      * R00troot
    </p>
    <p>
      
    </p>
    <p>
      10:30
    </p>
    <p>
      ~~~
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Ready to start?" POSITION="right" ID="ID_585889078" CREATED="1574687365346" MODIFIED="1574689324551">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Environment Ready
    </p>
    <p>
      
    </p>
    <p>
      - Installed VM
    </p>
    <p>
      - Login as Admin
    </p>
    <p>
      - Is tracks ready?
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Don't know
    </p>
    <p>
      &#160;&#160;&#160;&#160;- No health check or status to inform me
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lesson
    </p>
    <p>
      
    </p>
    <p>
      - Automated Execution can help derisk deployment and startup
    </p>
    <p>
      - Without this, the first 'test' sessions are 'health check' sessions
    </p>
    <p>
      - Otherwise there is a risk of wasted time but finding out too late
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Not quite yet" ID="ID_589145856" CREATED="1574687657362" MODIFIED="1574687661125"/>
<node TEXT="Health Check Session" ID="ID_1866401764" CREATED="1574690528851" MODIFIED="1575287338257"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Health Check
    </p>
    <p>
      
    </p>
    <p>
      - CRUD
    </p>
    <p>
      - Create, Read, Update, Delete
    </p>
    <p>
      - Main Areas
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Keep it simple, create a todo
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![180%](images/health-check-notes-movie.gif)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![180%](images/health-check-issue-notes-example.gif)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons
    </p>
    <p>
      
    </p>
    <p>
      - All testing is exploratory, observation and exploration during health check
    </p>
    <p>
      - Exploration boosts (and is constrained by) technical knowledge of the app
    </p>
    <p>
      - Time Box Testing
    </p>
    <p>
      - I need to have screenshot tools to help gather evidence quickly during testing
    </p>
    <p>
      - Make Notes Prior (Plan) (AIMs)
    </p>
    <p>
      - Make More Notes During (Actual)
    </p>
    <p>
      - Gather Evidence
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="What to test?" POSITION="right" ID="ID_1347381943" CREATED="1574689325271" MODIFIED="1575288661616">
<edge COLOR="#ff00ff"/>
<node TEXT="What to test intro" ID="ID_748920923" CREATED="1575288648626" MODIFIED="1575288757293"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # How do I know what to test?
    </p>
    <p>
      
    </p>
    <p>
      - Requirements
    </p>
    <p>
      - Stories
    </p>
    <p>
      - Defects
    </p>
    <p>
      - Change Requests
    </p>
    <p>
      - Commits
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # I am going to
    </p>
    <p>
      
    </p>
    <p>
      - Test Holistically
    </p>
    <p>
      &#160;&#160;&#160;&#160;- System rather than Story
    </p>
    <p>
      - Assume other testing has been performed
    </p>
    <p>
      - Plan
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Planning Session" ID="ID_44571879" CREATED="1574868944982" MODIFIED="1575288879709"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Planning Session
    </p>
    <p>
      
    </p>
    <p>
      - Making the decision about what to test is also a 'session'
    </p>
    <p>
      - It is an exploratory process of weighing up factors, asking questions and making decisions
    </p>
    <p>
      - It can be tracked and planned like any other activity
    </p>
    <p>
      - It is important not to go into too deeply because we are working with unknowns
    </p>
    <p>
      - But if we &quot;don't plan&quot; because we are Agile, or Exploratory we are losing an opportunity to effectively target our testing.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ~~~
    </p>
    <p>
      # Planning session
    </p>
    <p>
      
    </p>
    <p>
      20191126 - 13:00
    </p>
    <p>
      
    </p>
    <p>
      - release notes
    </p>
    <p>
      - commits?
    </p>
    <p>
      - defects?
    </p>
    <p>
      - general functionality?
    </p>
    <p>
      - assume team tested, add value by going 'holistic'
    </p>
    <p>
      - pick release note item and go beyond acceptance criteria
    </p>
    <p>
      
    </p>
    <p>
      &quot;You can now change the state of a context to closed&quot;
    </p>
    <p>
      
    </p>
    <p>
      Questions:
    </p>
    <p>
      
    </p>
    <p>
      - What is a Context?
    </p>
    <p>
      - What is Context State?
    </p>
    <p>
      - What states are there?
    </p>
    <p>
      - Is it a state machine?
    </p>
    <p>
      - Are all states equally valid?
    </p>
    <p>
      - Are there transition rules?
    </p>
    <p>
      
    </p>
    <p>
      20191126 - 13:10
    </p>
    <p>
      ~~~
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="What to test details" ID="ID_1423637243" CREATED="1575288639817" MODIFIED="1575550694026"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What do I test?
    </p>
    <p>
      
    </p>
    <p>
      - Requirements
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Often driven by 'stories' on Agile
    </p>
    <p>
      &#160;&#160;&#160;&#160;- What a User wants to achieve
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Why they want it
    </p>
    <p>
      - How it has been implemented
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Functional Description
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Technical Risk
    </p>
    <p>
      - Decisions &amp; Constraints made during development
    </p>
    <p>
      - Priorities and Agreed Risk Areas
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Taking a System and Beyond View
    </p>
    <p>
      
    </p>
    <p>
      I will assume that testing has been done on the stories and all stories complete in the sprint and release.
    </p>
    <p>
      
    </p>
    <p>
      I will take a System view and ignore specific 'sprint', 'story' or 'release' requirements. View functionality as a whole.
    </p>
    <p>
      
    </p>
    <p>
      I will not review automated execution. Risk of duplicated effort and scope.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Q: How does a manager add value on an Agile Project?
    </p>
    <p>
      
    </p>
    <p>
      &lt;!--
    </p>
    <p>
      
    </p>
    <p>
      This isn't a joke by the way.
    </p>
    <p>
      
    </p>
    <p>
      --&gt;
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # A: By looking at the project holistically.
    </p>
    <p>
      
    </p>
    <p>
      - Teams are focussed on the functionality that they are working on.
    </p>
    <p>
      - Teams often don't have time to look beyond.
    </p>
    <p>
      - Teams are often not encouraged to think beyond.
    </p>
    <p>
      
    </p>
    <p>
      Process risk, can be used to drive testing. Look where others don't.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Starting Testing" POSITION="right" ID="ID_1324712374" CREATED="1574776718581" MODIFIED="1575287422536">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # My Chosen Scope
    </p>
    <p>
      
    </p>
    <p>
      From https://www.getontracks.org/news/comments/release-2.3.0/
    </p>
    <p>
      
    </p>
    <p>
      &gt; &quot;You can now change the state of a context to closed&quot;
    </p>
    <p>
      
    </p>
    <p>
      ![150%](images/tracks-chosen-change-to-test.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # When I start testing, I don't know what that means yet.
    </p>
    <p>
      
    </p>
    <p>
      I have to explore to find out.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Identify Aims and Objectives" ID="ID_1501307717" CREATED="1574936603147" MODIFIED="1574936612974"/>
</node>
<node TEXT="Recon and Model Building" POSITION="right" ID="ID_1425150092" CREATED="1574776755906" MODIFIED="1575287455247">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Context State
    </p>
    <p>
      
    </p>
    <p>
      &quot;Charter&quot;
    </p>
    <p>
      
    </p>
    <p>
      &gt; &quot;You can now change the state of a context to closed&quot;
    </p>
    <p>
      
    </p>
    <p>
      - What is a Context?
    </p>
    <p>
      - What is Context State?
    </p>
    <p>
      - What states are there?
    </p>
    <p>
      - Is it a state machine?
    </p>
    <p>
      - Are all states equally valid?
    </p>
    <p>
      - Are there transition rules?
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Recon Session
    </p>
    <p>
      
    </p>
    <p>
      ![150%](images/recon-notes-movie.gif)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Recon Session
    </p>
    <p>
      
    </p>
    <p>
      Findings:
    </p>
    <p>
      
    </p>
    <p>
      * todos added to context
    </p>
    <p>
      * context seems to move between state in any order (TODO: cover state table)
    </p>
    <p>
      * constraint, cannot move context to closed if open actions
    </p>
    <p>
      * but can add open actions to closed contexts
    </p>
    <p>
      * all contexts are shown in auto complete drop down regardless of state (order controlled by Organize view)
    </p>
    <p>
      * seems to be XHR updates but need to view traffic to be sure
    </p>
    <p>
      * open screens to not update with state unless refreshed e.g. home, when open and move context to new state, does not show new state - can this be used to abuse state? e.g. drag todo as sub todo on a todo on a closed state and closed todo that has not refreshed yet?
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      Lessons Learned:
    </p>
    <p>
      
    </p>
    <p>
      - Functional Testing is Functional Testing
    </p>
    <p>
      - Architecture and technology changes observation ability
    </p>
    <p>
      - My modelling and assessment of findings is limited by my ability to observe
    </p>
    <p>
      - Choosing and Selecting Tooling is an evolving process based on the needs of the testing and the application.
    </p>
    <p>
      - I don't 'start' with tools, I iterate towards tool usage as required.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Recon Session" ID="ID_350143338" CREATED="1574936617623" MODIFIED="1574936621749"/>
</node>
<node TEXT="Debrief Session" POSITION="right" ID="ID_1199897051" CREATED="1574936498853" MODIFIED="1575287480409">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Debrief Session
    </p>
    <p>
      
    </p>
    <p>
      - Look at what we've done
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Working exploratory means I have to 'step back' periodically
    </p>
    <p>
      - Collate Notes
    </p>
    <p>
      - Identify Issues, Todos, Raise Defects
    </p>
    <p>
      - Feed into Planning Session
    </p>
    <p>
      - Refine/Formalise Models - Modelling Session if 'large'
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![150%](images/debrief-session-notes-movie.gif)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons Learned
    </p>
    <p>
      
    </p>
    <p>
      - I rely on linear text as much as possible
    </p>
    <p>
      - text files, markdown, screenshots in `images` folder
    </p>
    <p>
      - formatting, aesthetics, structure
    </p>
    <p>
      &#160;&#160;&#160;&#160;- can be added automatically and during debrief
    </p>
    <p>
      - when working on own, this is indispensable
    </p>
    <p>
      - can act as a 'status' report
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Explore State and ELH in more detail" POSITION="right" ID="ID_1936801989" CREATED="1574939923447" MODIFIED="1574939954186">
<edge COLOR="#0000ff"/>
<node TEXT=" Modelling Session" ID="ID_1176129861" CREATED="1574939955072" MODIFIED="1575289330734"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Modelling Session
    </p>
    <p>
      
    </p>
    <p>
      - &quot;prep a more comprehensive coverage approach because I didn't 'test' this I did an initial exploration during recon but the coverage wasn't documented or thought through well enough.&quot;
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![](images/2019-11-28_11-56-44-modelling-session.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons Learned
    </p>
    <p>
      
    </p>
    <p>
      - Modelling is a key skill
    </p>
    <p>
      - When our models are ambiguous it might mean we don't understand
    </p>
    <p>
      - Simple concepts can expand into complex models
    </p>
    <p>
      - Complex models have a high number of combinations
    </p>
    <p>
      - Formal modelling often has tooling support
    </p>
    <p>
      - Informal modelling can support exploration
    </p>
    <p>
      - Don't leap to a diagrammer tool
    </p>
    <p>
      &#160;&#160;&#160;&#160;- pen, paper, smartphone camera
    </p>
    <p>
      &#160;&#160;&#160;&#160;- whiteboard -&gt; smartphone camera
    </p>
    <p>
      &#160;&#160;&#160;&#160;- tech solution smartpen -&gt; Evernote
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Planning Session" ID="ID_1465057172" CREATED="1574942506733" MODIFIED="1575287532385"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Led to a Quick Planning Session
    </p>
    <p>
      
    </p>
    <p>
      ![150%](images/2019-11-28_11-56-44-modelling-session-planning.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # If this was a real project:
    </p>
    <p>
      
    </p>
    <p>
      - add this as notes in a Jira task
    </p>
    <p>
      - add this to kanban board
    </p>
    <p>
      - discuss with team
    </p>
    <p>
      - possibly expand further and write up, if not doing immediately and model is complex
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons Learned
    </p>
    <p>
      
    </p>
    <p>
      - Modelling and Planning are related
    </p>
    <p>
      - Planning is prioritising parts of model coverage
    </p>
    <p>
      - Having a representation of your model means it is easier to see, what else can be done later
    </p>
    <p>
      - Initial plan helps maximise the effectiveness of the testing sessions
    </p>
    <p>
      - Expand Plan as far as you need to to support the next session
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Coverage Session" POSITION="right" ID="ID_1903395747" CREATED="1574946560875" MODIFIED="1574946564752">
<edge COLOR="#ff00ff"/>
<node TEXT="Actual &quot;testing&quot;" ID="ID_1923434403" CREATED="1574948511302" MODIFIED="1575289605680"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Coverage Session
    </p>
    <p>
      
    </p>
    <p>
      - Actual Testing
    </p>
    <p>
      - Created a mindmap in advance to expand the plan
    </p>
    <p>
      - kept notes as tested
    </p>
    <p>
      - discovered some missing items from the 'plan' added them into my notes
    </p>
    <p>
      - trying to keep additional exploration to a minimum - focus on 'coverage' of defined plan
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Expanded Plan
    </p>
    <p>
      
    </p>
    <p>
      ![](images/2019-11-28_14-03-49-mindmap-plan-mm.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Coverage Session Notes
    </p>
    <p>
      
    </p>
    <p>
      ![](images/coverage-session-notes-movie.gif)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons Learned
    </p>
    <p>
      
    </p>
    <p>
      - Gathered more evidence when testing, than during recon
    </p>
    <p>
      - Expand plans as required, when required
    </p>
    <p>
      &#160;&#160;&#160;&#160;- I use FreePlane because of build in scripting and easy file parsing
    </p>
    <p>
      - Plan may not be complete
    </p>
    <p>
      &#160;&#160;&#160;&#160;- be aware of new opportunities to test
    </p>
    <p>
      &#160;&#160;&#160;&#160;- if in keeping with current aim then follow
    </p>
    <p>
      &#160;&#160;&#160;&#160;- if out of scope then note down idea as a todo and plan via debrief
    </p>
    <p>
      &#160;&#160;&#160;&#160;- keep notes of expanded extra paths followed
    </p>
    <p>
      - tooling support for observation, interrogation. manipulation appropriate for scope and aim i.e. I didn't use any extra tools for testing, but I did for planning
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="work through plan" ID="ID_123093527" CREATED="1574946565375" MODIFIED="1574946579751"/>
<node TEXT=" but without the additional observation that tools provide" ID="ID_910705503" CREATED="1574946580475" MODIFIED="1574946587326"/>
</node>
<node TEXT="Exploratory Session" POSITION="right" ID="ID_1323004129" CREATED="1575026105730" MODIFIED="1575550826809">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # (Technical) Exploratory Session
    </p>
    <p>
      
    </p>
    <p>
      &quot;Aim: Investigate the traffic mechanisms for creating actions and changing state on context - how far can we push this?&quot;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Technical Exploratory Session Difference From Exploratory Session
    </p>
    <p>
      
    </p>
    <p>
      - Technical Exploratory Session using observation at a technology level e.g. traffic, params, headers
    </p>
    <p>
      - Manipulation at a technical level e.g. resend requests, DOM manipulation
    </p>
    <p>
      - Testing often driven by Technical observation - what happens if I change that field? what if there are multiple fields?
    </p>
    <p>
      - Bypass system flow and GUI, send messages directly
    </p>
    <p>
      - Tools mandatory
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Using
    </p>
    <p>
      
    </p>
    <p>
      - Firefox (because I have fewer plugins to create noise in the Proxy)
    </p>
    <p>
      - FoxyProxy plugin (configure use of ZAP Proxy)
    </p>
    <p>
      - Owasp ZAP Proxy (Observe, Interrogate, Manipulate HTTP)
    </p>
    <p>
      - Firefox Dev Tools (interrogate/manipulate DOM)
    </p>
    <p>
      - TextEditor - view XML (Sublime Text)
    </p>
    <p>
      - SnagIt - screenshots
    </p>
    <p>
      - Evernote - note taking
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![](images/2019-11-29_13-47-30-technical-exploratory-sesson-screen.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Basic Process
    </p>
    <p>
      
    </p>
    <p>
      - Work in GUI
    </p>
    <p>
      - Observe impact via HTTP (I can see if JS or Server validation used)
    </p>
    <p>
      - Interrogate HTTP Traffic
    </p>
    <p>
      &#160;&#160;&#160;&#160;- source of additional testing ideas
    </p>
    <p>
      - Manipulate (resend) HTTP Traffic for message/param exploration
    </p>
    <p>
      - Trigger interesting results via DOM manipulation in GUI
    </p>
    <p>
      - very important to keep an eye on time and scope of testing
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Notes Overview
    </p>
    <p>
      
    </p>
    <p>
      ![](images/exploratory-session-notes-movie.gif)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Notes Subset
    </p>
    <p>
      
    </p>
    <p>
      ![](images/2019-11-29_13-53-45-tech-exploratory-session-notes-subset.png)
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What I Found
    </p>
    <p>
      
    </p>
    <p>
      - possible bug in ZAProxy - session only savable to Documents, not sub folder
    </p>
    <p>
      - possible Tracks bug - no error message from system when incorrect status used for context, the value is ignored, the user is told 200 OK, suggests Tracks 'trusts' the GUI so error handling might need more investigation across system
    </p>
    <p>
      - Tracks XHR message responses which are error messages are 200 status rather than a 4xx status
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What I Found
    </p>
    <p>
      
    </p>
    <p>
      - many 'interesting things about tracks' that I might want to investigate later e.g.&#160;&#160;`_method=put` field in request different from HTTP verb, what is a &quot;default context&quot; and how is it set, Tracks responds with HTML and JS rather than a 'message' like JSON
    </p>
    <p>
      - API vs GUI mismatch? ie a forms API and a JSON API
    </p>
    <p>
      - limited in what I could observe because I did not include DB tools, had to use System exports to check data.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Tooling Benefits
    </p>
    <p>
      
    </p>
    <p>
      - automatically record HTTP session
    </p>
    <p>
      - easy replay for requests
    </p>
    <p>
      - easy to view traffic without having to use dev tools
    </p>
    <p>
      - use dev tools for DOM Inspection and manipulation
    </p>
    <p>
      - use proxy for HTTP Observation, Inspection and Manipulation
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Lessons Learned
    </p>
    <p>
      
    </p>
    <p>
      - Tools can impact testing - lost time due to tool setup
    </p>
    <p>
      - More information can mean more risk of going off charter or off time
    </p>
    <p>
      - Test Ideas that are not possible without tooling (e.g. duplicate params, re-order params)
    </p>
    <p>
      - Duplicate 'bugs' at GUI as well as HTTP level to demonstrate possibility e.g. amend DOM, not just HTTP
    </p>
    <p>
      - Automated record keeping is a 'backup', I still copy HTTP request and URLs into my notes
    </p>
  </body>
</html>
</richcontent>
<node TEXT="aim" ID="ID_1814927598" CREATED="1575026113792" MODIFIED="1575026115470"/>
<node TEXT="timebox" ID="ID_267509269" CREATED="1575026116245" MODIFIED="1575026118444"/>
<node TEXT="explore" ID="ID_1459572814" CREATED="1575026119059" MODIFIED="1575026121832"/>
</node>
<node TEXT="What Next" POSITION="right" ID="ID_701799993" CREATED="1574952048712" MODIFIED="1575550450828">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What Did I Not Do/Show? - Automating
    </p>
    <p>
      
    </p>
    <p>
      - likely factored into &quot;Story&quot; Testing
    </p>
    <p>
      - start tactical, make it work, refactor to abstraction layers, become more strategic as required
    </p>
    <p>
      - use default tools you know how to get value out of quickly
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What Did I Not Do/Show? - Admin
    </p>
    <p>
      
    </p>
    <p>
      - Admin Sessions
    </p>
    <p>
      - Raising Defects
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Use existing logs and evidence where possible.
    </p>
    <p>
      &#160;&#160;&#160;&#160;- Use logs to help recreate
    </p>
    <p>
      - Clarifying Questions
    </p>
    <p>
      - Communication
    </p>
    <p>
      - Uploading Logs to Time Tracker
    </p>
    <p>
      - keep as light weight as possible
    </p>
    <p>
      &#160;&#160;&#160;&#160;- use existing team tools, rather than adding 'test tools' - particularly on Agile - as much as possible
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What would I do next (for current scope)?
    </p>
    <p>
      
    </p>
    <p>
      - API
    </p>
    <p>
      &#160;&#160;&#160;&#160;- expand functional scope to the API to repeat what was done at GUI
    </p>
    <p>
      &#160;&#160;&#160;&#160;- assumption - different routing code, possibly different back end code
    </p>
    <p>
      - DB
    </p>
    <p>
      &#160;&#160;&#160;&#160;- extend observation and interrogation to the DataBase
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Basic Flow" POSITION="right" ID="ID_495393910" CREATED="1575039137719" MODIFIED="1575289970626">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Basic Testing Flow Used
    </p>
    <p>
      
    </p>
    <p>
      ![](images/basic-flow.png)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Final Notes" POSITION="right" ID="ID_600004309" CREATED="1575020773605" MODIFIED="1575279740745">
<edge COLOR="#00007c"/>
<node TEXT="Exploration and coverage" ID="ID_1168186929" CREATED="1575020776148" MODIFIED="1575279737882"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Testing
    </p>
    <p>
      
    </p>
    <p>
      - 241 minutes (4 hours) spent Testing
    </p>
    <p>
      - 93 minutes (1.5 hours) hands on
    </p>
    <p>
      - 2-3+ hours additional admin if 'real' project
    </p>
    <p>
      
    </p>
    <p>
      Much of Testing goes unnoticed and untracked.
    </p>
    <p>
      
    </p>
    <p>
      Note taking is key to gathering evidence and making testing visible.
    </p>
    <p>
      
    </p>
    <p>
      &lt;!--
    </p>
    <p>
      
    </p>
    <p>
      Of the 241 minutes I spent Testing only 90 minutes would be what most people think of as &quot;Testing&quot;
    </p>
    <p>
      
    </p>
    <p>
      - i.e. hands on keyboard work
    </p>
    <p>
      
    </p>
    <p>
      Because this was an 'exercise' I didn't have to raise defects or have discussions which would probably have added another few hours on to the total without increasing the &quot;Testing&quot; work.
    </p>
    <p>
      
    </p>
    <p>
      --&gt;
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Bugs
    </p>
    <p>
      
    </p>
    <p>
      Testing is not all about bugs.
    </p>
    <p>
      
    </p>
    <p>
      - The most visible output, are bugs.
    </p>
    <p>
      - Many projects only care about bugs.
    </p>
    <p>
      - Testing is a process of deliberate exploration and coverage.
    </p>
    <p>
      - Finding bugs is a side-effect of this process.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Tooling
    </p>
    <p>
      
    </p>
    <p>
      Tooling comes from:
    </p>
    <p>
      
    </p>
    <p>
      - need
    </p>
    <p>
      &#160;&#160;&#160;&#160;- observation
    </p>
    <p>
      &#160;&#160;&#160;&#160;- interrogation
    </p>
    <p>
      &#160;&#160;&#160;&#160;- manipulation
    </p>
    <p>
      &#160;&#160;&#160;&#160;- admin (reporting, management, etc.)
    </p>
    <p>
      - technology
    </p>
    <p>
      &#160;&#160;&#160;&#160;- chosen project technology can aid/hinder tooling
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Exploration And Coverage
    </p>
    <p>
      
    </p>
    <p>
      We can explore at all points in our testing. Observation and reflection can identify new opportunities. New opportunities do not need to be followed immediately.
    </p>
    <p>
      
    </p>
    <p>
      - The more we are focussed on coverage the more we constrain our exploration within the coverage.
    </p>
    <p>
      
    </p>
    <p>
      - The more we are focussed on Exploration, the more our coverage has to be reverse engineered from our logs, evidence and notes.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="End Matter" POSITION="right" ID="ID_1166137075" CREATED="1575290004613" MODIFIED="1575290757695">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # About Alan Richardson
    </p>
    <p>
      
    </p>
    <p>
      - EvilTester.com
    </p>
    <p>
      - CompendiumDev.co.uk
    </p>
    <p>
      - Talotics.com
    </p>
    <p>
      - @EvilTester
    </p>
    <p>
      
    </p>
    <p>
      _see above for books, youtube, online training, patreon, blog, etc._
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Social &amp; Contact Links
    </p>
    <p>
      
    </p>
    <p>
      1. https://www.eviltester.com
    </p>
    <p>
      2. https://twitter.com/eviltester
    </p>
    <p>
      3. https://www.linkedin.com/in/eviltester/
    </p>
    <p>
      4. https://www.youtube.com/user/EviltesterVideos
    </p>
    <p>
      5. https://instagram.com/eviltester
    </p>
    <p>
      6. https://facebook.com/eviltester
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Unused" POSITION="right" ID="ID_1602709131" CREATED="1575550249085" MODIFIED="1575550251686">
<edge COLOR="#ff0000"/>
<node TEXT="Edited For Length" ID="ID_1417786070" CREATED="1575550256785" MODIFIED="1575550714103"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Section: Edited for length
    </p>
    <p>
      
    </p>
    <p>
      The slides that follow were not used in the main presentation due to timing constraints.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="What to Test Agile Notes" ID="ID_65931293" CREATED="1575550658478" MODIFIED="1575550697081"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # In-Sprint, Story and System Testing
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # In-sprint testing
    </p>
    <p>
      
    </p>
    <p>
      - constrained to 'work done' scope
    </p>
    <p>
      - artificially constrained - no error handling, no security etc.
    </p>
    <p>
      - need to track these 'ommissions' as coverage gaps for later testing
    </p>
    <p>
      - often testing 'bits' of stories
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Stories
    </p>
    <p>
      
    </p>
    <p>
      - Complete chunk of work
    </p>
    <p>
      - Sometimes span sprints
    </p>
    <p>
      &#160;&#160;&#160;&#160;- 'not complete' but still requiring testing
    </p>
    <p>
      - Acceptance Criteria testing needs to be revisited
    </p>
    <p>
      - Automated Execution to cover criteria can help
    </p>
    <p>
      - Going 'beyond' the story often needs to wait till story is 'complete'
    </p>
    <p>
      - Stories often tested in isolation - Automated Execution in a CI can help
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # System Testing is a vague term
    </p>
    <p>
      
    </p>
    <p>
      - I'm meaning 'system as a whole'
    </p>
    <p>
      - Stories in combination i.e. functional flows that span stories
    </p>
    <p>
      - Stories in different orders
    </p>
    <p>
      - Going beyond the story Acceptance Criteria
    </p>
    <p>
      - Often 'neglected' in Agile Projects
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Tracks v2.3.0 Release Notes
    </p>
    <p>
      
    </p>
    <p>
      https://www.getontracks.org/news/comments/release-2.3.0/
    </p>
    <p>
      
    </p>
    <p>
      - Changes
    </p>
    <p>
      - Bug Fixes
    </p>
    <p>
      
    </p>
    <p>
      Could review code committed since previous release.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      ![150%](images/tracks-2-3-0-release-notes-page.png)
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Reflect on the issue in more detail" ID="ID_350403565" CREATED="1574937527203" MODIFIED="1575550707254"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Is it a real issue?
    </p>
    <p>
      
    </p>
    <p>
      &gt; I cannot create an Action on a closed context. And I can not change state of a Context to closed when it has open Actions. But I can amend an Action to assign it to a closed context.
    </p>
    <p>
      
    </p>
    <p>
      - Don't know
    </p>
    <p>
      - On a real project I would not have pursued it so far, without finding that out first.
    </p>
    <p>
      - It is the type of issue that would be found via exploratory processes
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # If it is an issue, when would it be found?
    </p>
    <p>
      
    </p>
    <p>
      - Structured/Traditional testing
    </p>
    <p>
      &#160;&#160;&#160;&#160;- hopefully during a Q&amp;A, clarification when writing 'cases/conditions' from the requirements
    </p>
    <p>
      &#160;&#160;&#160;&#160;- but it might take days/weeks to get to that point depending on process e.g.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- analyse all test conditions and ideas against requirements and remove ambiguity - might find it within days
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- if test conditions, converted to cases, converted to scripts and work through requirements in sequence it might take weeks
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # If it is an issue, when would it be found?
    </p>
    <p>
      
    </p>
    <p>
      - Agile
    </p>
    <p>
      &#160;&#160;&#160;&#160;- hopefully during a story understanding or development session
    </p>
    <p>
      &#160;&#160;&#160;&#160;- if not then, would it be found from following acceptance criteria?
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- probably not, it would be found in the exploratory testing 'around' the story
    </p>
    <p>
      
    </p>
    <p>
      Note: questioning and clarifying during analysis is an Exploratory process. This can be found early, by exploring early.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Projects make decisions about defects
    </p>
    <p>
      
    </p>
    <p>
      In this case it seems like a mismatch in states. The constraint is too easy to bypass if it is an important constraint e.g.
    </p>
    <p>
      
    </p>
    <p>
      Instead of creating the Action on a closed context. I create it on an Active context, then amend the action to be on a closed context.
    </p>
    <p>
      
    </p>
    <p>
      But, the impact in terms of system reliability, robustness, data integrity etc. is minor so I might not push hard on this, I might point out that it seems pretty inconsistent.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Observation, Interrogation, Manipulation" ID="ID_678865303" CREATED="1574860578111" MODIFIED="1575550707543"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What Drives Tooling?
    </p>
    <p>
      
    </p>
    <p>
      - Observation
    </p>
    <p>
      - Interrogation
    </p>
    <p>
      - Manipulation
    </p>
    <p>
      - Admin
    </p>
    <p>
      &#160;&#160;&#160;&#160;- process support, Evidence Gathering, Note Taking, etc.
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Observation
    </p>
    <p>
      
    </p>
    <p>
      - seeing in real time
    </p>
    <p>
      - possibility to quick catch issues
    </p>
    <p>
      - supports monitoring e.g. alerts on errors in logs
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Interrogation
    </p>
    <p>
      
    </p>
    <p>
      - deep dive 'after'
    </p>
    <p>
      - could be 'seconds' after, but still 'after'
    </p>
    <p>
      - more data than can be absorbed quickly
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Manipulation
    </p>
    <p>
      
    </p>
    <p>
      - ability to change the system -defaults, static data
    </p>
    <p>
      - repeat/amend requests
    </p>
    <p>
      - use the API
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # Evidence Gathering
    </p>
    <p>
      
    </p>
    <p>
      - recorded observations
    </p>
    <p>
      - note taking
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # What Drives Tooling ... Needs of Testing
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # For Web
    </p>
    <p>
      
    </p>
    <p>
      I can test 'blind' and trust the GUI or I can add tooling
    </p>
    <p>
      
    </p>
    <p>
      - Dev Tools
    </p>
    <p>
      - Proxy Tools
    </p>
    <p>
      
    </p>
    <p>
      Both allow observation and interrogation. Proxy tool offers scope for easier longer term interrogation and manipulation for replay.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ---
    </p>
    <p>
      
    </p>
    <p>
      # For `Technology`
    </p>
    <p>
      
    </p>
    <p>
      Find tools that allow:
    </p>
    <p>
      
    </p>
    <p>
      - Observation
    </p>
    <p>
      - Interrogation
    </p>
    <p>
      - Manipulation
    </p>
    <p>
      - Support Scripting, extension, apis
    </p>
    <p>
      - Record Evidence
    </p>
  </body>
</html>
</richcontent>
<node TEXT="What drives tooling?" ID="ID_203086032" CREATED="1574690289860" MODIFIED="1574951676354">
<node TEXT="Observation" ID="ID_323340689" CREATED="1574690299495" MODIFIED="1574690306546"/>
<node TEXT="Interrogation" ID="ID_501657802" CREATED="1574690307345" MODIFIED="1574690310083"/>
<node TEXT="Manipulation" ID="ID_351374011" CREATED="1574690310757" MODIFIED="1574690313846"/>
<node TEXT="Evidence Gathering" ID="ID_1576061526" CREATED="1574951887234" MODIFIED="1574951891162"/>
<node TEXT="Needs of Testing" ID="ID_1930577048" CREATED="1574952317965" MODIFIED="1574952322466"/>
</node>
</node>
</node>
</node>
</map>
