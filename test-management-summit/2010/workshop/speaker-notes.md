# Prepared Speaker Notes

Notes retained from the presentation source, with the original slide numbers. These are preparation materials, not a transcript.

## Slide 2 - Section 1 – Introduction

Does your test team innovate, and generate new approaches to your testing? Have you incorporated exploratory testing into your approach? As test managers we can build processes and shape our team culture to encourage innovation, learning and exploration.

In this workshop we will get hands on and perform exploratory testing while learning the basic principles and techniques. You will use, and learn how to identify, tools which augment your testing. And we will learn, from our case histories, and discussions, ways of identifying and building tailored approaches to help us innovate and get the most out of our teams and our testing.

Stodgy, stuck in the mud, test managers need not apply. We designed this workshop for testers and managers willing to share their experiences and keep learning and moving their test process forward.

## Slide 3 - Exploratory &amp; Innovative Testing

You will learn:

- Your default approach to exploratory testing
- How to spot and adopt the attitude of the exploratory tester
- Innovation through exploration and learning
    - The application of analogy in software testing
- Canonical exploratory testing ideas
- Application of tools to exploratory testing
- Secrets of the exploratory testing masters

## Slide 4 - Who me? Who us?

Quick Introduction for the workshop facilitator:

- Why are you qualified to facilitate?
- What is your experience with exploratory testing?
- Experience with Managing exploratory testing?
- Experience with innovation?

Learn a little about the group:

- Names
- Background
- Have they heard of exploratory testing?
- Have they done exploratory testing before?
- Is exploratory testing part of their approach?
- Testers or Test Managers?

## Slide 5 - What do we mean by Exploratory Testing?

For more details visit:

- <http://www.satisfice.com/articles/what_is_et.shtml>
- <http://www.satisfice.com/kaner/?p=42>
- explaining exploratory testing by James Whittaker<http://blogs.msdn.com/james_whittaker/> [Source link](http://blogs.msdn.com/james_whittaker/archive/2009/01/08/explaining-exploratory-testing.aspx)

archive/2009/01/08/explaining-exploratory-testing.aspx

Other Simplifications:

Testing where the next test is influenced by the results of the learning from the last test.

Testing where test design happens all the time using all the techniques, heuristics, observations and thinking available to the tester.

The following do not encompass exploratory testing – “testing without scripts”, “testing without requirements”, “testing without a lot of documentation”

## Slide 6 - Improvement through Innovation

We have to start with dictionary definitions. Its a law or a rule or an old charter or something.

I find it hard to view innovation as something complicated. To me it means introducing something new into your process. Something that you haven't tried before.

I know that if it don't keep learning and trying something new that I will decrease the flexibility I have to respond to changing circumstances. I want to maximise my ability to deal with variation.

So I keep learning and keep bringing new ideas and techniques into my test process. I keep trying to introduce new ideas into my team test process and encourage my team to do the same. This allows us to grow, learn and improve.

No punishment for failure from trying something new. We increase our learning, and we might take a little pain. We carry forward what works and build on it. We learn what didn't and build on those learnings.

## Slide 7 - Innovate to respond to the Challenges of your context

Many of the innovations I have introduced to my test process have resulted from responding to changes in the context.

We need to be able to respond to variation. If we have a rigid process that will not bend then we can not respond effectively to variation. We need options and abilities to tackle variation.

Traditional structured testing – scripting, xrefs, fixed scope. Does not respond well to variation and mandates signoffs and 'no change'. We need to respond to change if it is part of our context.

Innovate in the face of variation. Find options. Experiment. See what others do. Find inspiration from other industries. Learn.

## Slide 8 - Some examples of what I mean by Innovation in software testing

Squeezed for time with an app that kept changing. I modelled the flow through the application as a digraph, wrote text descriptions for each 'node' and 'edge'. Then automatically generated paths from the model and 'wrote' test scripts automatically. My first use of model based testing.

I worked with an early version of T-plan and we were able to access the database directly to generate various metrics we needed and augment the xref functionality of the tool.

I have written automation tools in AutoIT, MSWord and excel.

I have used Selenium-IDE and other cheap and cheerful web form filling tools to automate drudgery test data setup and other parts of my testing. Nothing formal – all throw away stuff to help me.

I have used side-effects of tools to lock files and system utils like winpooch and sysinternal tools to help my testing.

I have used tools that hackers used to increase my visibility into the application under test and learn the technology in more detail.

I frequently had to 'bend' processes and tool usage to fulfil the 'mandated' process and still allow me to do my job.

This is a useful point to discuss the innovations the delegates have introduced into their test processes. If you are reading this outside the workshop then take a moment to list examples of innovations you have made over your testing career.

## Slide 9 - Section 2 – Where are we now?

John Seddon (<http://www.systemsthinking.co.uk)> recommends that any process of improvement using the PDCA (<http://en.wikipedia.org/wiki/PDCA)> starts at Check, not at Plan. [Source link](http://www.systemsthinking.co.uk/)

I consider this good advice. No point going off and planning stuff to do and change when we don't even know where we are or what our currently problems are. So we too will start at check:

- Where are we currently?

- What is our current work context for innovation?
    - Have we thought about this before?

- How do we currently 'do' exploratory testing?
    - Have we stopped to examine this before?

## Slide 10 - How would you describe your Current Culture of Innovation and Exploration?

I don't claim to have developed the most marvelous test process where I and my test team innovate all the time. But I know from past experience on other teams and with other projects that we have:

- Fewer barriers to innovation
- More encouragement to innovate
- No disciplining for failure through innovation

We still have issues with lack of time for innovation, and some of our test process implementation goals around automation have focused our automation innovation down a single route. i.e. rather than innovating with automation in general, we are innovating in our use of a specific automation tool.

I can say that every current team member does innovate. In their manual approach, documentation approach, automation approach, incorporating new tools, questioning our test approach and suggesting improvements.

So I think we have a good basis for innovating as we go forward.

Consider your process. How does your process encourage or stifle innovation?

## Slide 11 - How does your current test context encourage or stifle innovation and exploration?

Get into groups and discuss your current test context, team structure, process.

Does it encourage or stifle innovation?

Any examples in particular which can be shared with the group?

## Slide 13 - Debrief

Debriefing is an important part of exploratory testing.

Even if we 'debrief' with ourselves using the notes we made when testing.

Review the scope: What will we test next? What risks did we identify? Did we test the things we wanted or did we get distracted?

Review the process: Do we understand what we tested? Do we need more information about how it worked? Have we made any assumptions about what is going on? Do we have enough visibility into the application processing? Do we have the right tools?

All of this feeds into the next exploratory testing session. Or we may decide, we have done enough.

## Slide 15 - Risks of Introducing Innovation

Innovation comes with risks.

Part of the innovator mind set is an acceptance of risk, an ability to analyse, quantify and manage risk.

Risk plays a big part in testing too. So we should have the skills to deal with this.

Ultimately all these risks have to be managed. By you, the test manager. So you have to have a passion for innovation in your team to get bypass these risks and make the innovation on your team a success.

## Slide 16 - General Objections to Exploratory Testing

There are objections to exploratory testing that people will come up with, some are listed above.

If any of them are issues for you then try it, and solve the problem in your context.

If the objections are coming from your testers then you probably need to train and mentor them so they can adjust their approach and identify any benefits from doing it differently.

If the objections are coming from outside your team then you have to manage that and find a way of showing the benefits to the projects that you are testing within.

We will only spend time discussing this in the workshop if the group identify any objections that are important to them. Otherwise, take some time and see if you have any objections and concerns to exploratory testing – try it out and see if they manifest, research and see if anyone else has encountered them and bypassed them.

## Slide 17 - Risks of Introducing Exploratory Testing

Because Exploratory testing is tied in with innovation, we should have more of a focus on the risks of innovating in this way so that we can manage them.

Above are some of the risks that I deal with when introducing exploratory testing.

They are all manageable, through training, mentoring and communication.

One lesson I learned was to go slower than I wanted to, and help people move through at their own pace. But people respond to coaching and feedback.

As a manager these are just risks you deal with if you have passion for improving in this way.

Can you identify any other risks? How would you manage them?

## Slide 18 - Characteristics &amp; Attitude Exhibited by exploratory testing and Testers during testing

We have definitions of exploratory testing, but it is really more useful to look at the practical attitudes and characteristics as these are things that can be coached, or trained.

You can evaluate around these by asking questions to identify improvements in the process.

You can specifically target these as areas for improvement, training and development.

Examine your own testing style and your testers approach and see which they adopt that you can enhance through coaching and which you are going to have train them in?

The above list tie in well to the general characteristics of innovators presented in many of the 'innovation' books and articles you will read.

## Slide 22 - Risk Driven Exploratory Testing

When I ask about risk in interview I tend to receive answers about project risk.

Exploratory testers can use project risk to guide their testing. But we also use technical risk.

We build systems models and identify risk by looking at failure points.

We learn how the technology works to identify risks.

Good coverage of coverage and technical risk in Software Testing see:

- How to Break {Software, Security, Web Software} by James Whittaker
- Lessons Learned in Software Testing by Kaner, Bach and Pettichord
- Testing Computer Software by Kaner, Falk and Nguyen

## Slide 23 - Heuristics &amp; Mnemonics

James Bach and Michael Bolton have produced useful models of 'areas' to think about when testing.

They have a series of mnemonics which help them remember them.

These are very useful models to start with until you create your own.

<http://www.kohl.ca/blog/archives/000178.html>

<http://www.kohl.ca/blog/archives/000179.html>

<http://www.infoq.com/news/2009/10/testing_heuristics>

## Slide 24 - Session Based Testing

Exploratory testing is often communicated as being unstructured, unmanageable and undocumented.

Splitting your testing into sessions offers and approach based on general time management principles

<http://en.wikipedia.org/wiki/Session-based_testing>

<http://www.satisfice.com/sbtm/>

Adventures in Session Based Testing (<http://www.workroom-productions.com/papers.html)>

<http://sessiontester.openqa.org/>

Taking elements of this allows you to see that the process of exploratory testing does not just apply on an individual tester basis, it also works as part of a communication process or team process.

## Slide 28 - Exploratory Test Tools Augment rather than replace

Exploratory testers have a tendency to use lots of tools.

Sometimes 'tools' confuses people into thinking about 'testing tools'. But anything you use to 'aid' you in your testing – I call a tool.

I have experimented with different text editors to see which one fits my note taking needs best.

Good places to look: sourceforge.net, portablefreeware.com, lifehacker.com.

Other metaphors, extensions to your own senses.

What tools do you use?

## Slide 29 - Identification of tools

I previously wrote about how to identify alternative tools in the paper listed above.

I keep my eye out for new tools.

I read blogs to find out what other people are using – lots of blogs.

I have rss feeds to 'tool' sites.

I ask people what they use.

I keep trying different tools in the same category.

I write my own automation routines to speed things up.

## Slide 30 - Augment Testing with Tools

This might be a demo if time allows.

But I have listed a few of the tools I would default to using if I were testing a web app.

I would have Context running, my current text editor of choice (because I can write macros, have dual panes, and insert date/time etc.)

I would have Fiddler running to see the traffic across the session.

Firebug would be installed in Firefox (along with many other plugins.)

And I would identify risky input areas and 'attack' with PerlClip, or other Firefox plugins.

I would find it hard to know if I was testing thoroughly without a good set of tools to give me visibility and improve my memory of where I had been and what I was thinking.

## Slide 33 - Innovation Leadership Traits

I could not find many good books on innovation that were treating it in the same way that I thought about it and offered practical advice.

But “innovation leaders” by Jean-Philippe Deschamps covers managing and leading innovation far better than I can hope to cover in this session so I offer it to you as a tip for further reading and extract this set of traits for the innovation leader.

See if you agree with these and think about why they might be important. They are certainly skills to work on if you want to improve the innovation culture of your team. Start with yourself, before you start with the team.

## Slide 34 - Recruiting Exploratory and Innovative Testers

Recruiting exploratory and innovative testers takes longer. It starts with the job spec making it clear what you want. Then discussions with the recruitment agents helping them weed out people who are not suitable.

Make notes on CV about questions to ask in interviews and thoughts on where you think candidate is strong and week. Note down 'times' against roles.

After CV reviews provide feedback to the agents.

Reject anyone that you are not sure about moving to the next stage.

Phone interview is vital. Ask for explanations of topics you are interested in and descriptions of how and why they have done things in the past. Ask probing questions when you detect 'bluffing' answers. We have a 'standard' mindmap to ask questions around.

F2F interviews, always interview in pairs. Make as interactive as possible – look for the characteristics and attributes that we mentioned early on.

## Slide 35 - Build the right context

Take a hard look at your current testing context:

- Are your stated aims simple enough?
- Do they provide enough scope for innovation?
- Identify the waste and clutter to allow exploration and innovation to take focus rather than process.
- Are you aiming at the right things?
- Have the team been involved in discussions?
- Where does the team spend its time? Can you automate?
- Do you actually try new things?

Recommended Reading:

- I want you to cheat by John Seddon
- Systems Thinking in the public Sector by John Seddon
- Out of the Crisis by W. Edwards Deming
- The New Economics by W. Edwards Deming

## Slide 36 - Building Test Teams which Innovate

If you really don't know how to keep learning and push yourself to have the skills you need to push your innovation forward then the recent book by James Bach “Secrets of a Buccaneer-scholar” can provide some inspiration.

But take a look at your process. Do you really encourage innovation? When you meet with your team do you ask them to think about how they innovated? How they might have innovated? What stopped them innovating?

Can you do anything to remove the blockers to innovation?

What can you automate to save time?

Do you encourage and then prevent further contribution by saying 'no' to the wrong things in the wrong way?

Do you track Ideas? Risks? Tools? Weak signals?

## Slide 37 - Some Secrets of the Exploratory Testing Masters

They learn the fundamentals thoroughly. Then question them.

They looked at effectiveness in other areas?

They all have other interests that they use as metaphors and analogous knowledge pools to apply to testing.

They keep learning. They reflect and self evaluate.

They improve their basic (non-traditional testing) skills of note taking, experiment building, critical thinking.

They improve their technical computer skills and knowledge.

There is no secret. There is hard work. Driven by a passion to improve and learn.

If this describes you, then you will have no problems. If not, then up your game a bit, the more you up your game the more you will improve.

## Slide 38 - Selected Reading List – Books and Online

- How to Break {Software, Security, Web Software} by James Whittaker
- Lessons Learned in Software Testing by Kaner, Bach and Pettichord
- Testing Computer Software by Kaner, Falk and Nguyen
- <http://www.innovationtools.com/>
- <http://en.wikipedia.org/wiki/Systems_thinking>
- “innovation leaders” by Jean-Philippe Deschamps
- “Secrets of a Buccaneer-scholar” by James Bach

- <http://www.testingreflections.com> - a testing blog aggregator [Source link](http://www.testingreflections.com/)

- Authors to read: John Seddon, W. Edwards Deming
