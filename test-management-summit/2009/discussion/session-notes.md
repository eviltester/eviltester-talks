# Exploring free and open source test tools

Archived article draft converted from the five-page PDF. It differs from the expanded [conference-page notes](https://www.eviltester.com/conference/tmsJan2009_conference/). Original wording, examples, and the unfilled image placeholder are retained. Browser print headers and footers are omitted; a paragraph split across pages 2-3 is joined once. This is not a verbatim transcript.

I recently facilitated a session on free and open source test tools at the Test Management Summit. This post contains an edited form of my notes prior to the event and some amendments and additions based on the discussion from the session. \[Download the slides from the session\]

## What makes me think I have enough experience to talk about this?

I have coded and designed commercial, free and open-source testing tools. I have used open source, free and commercial test tools. I try to keep up to date with the available open-source and free test tools - less so with the commercial tools (for reasons that I will explain later). I do not claim expertise with all the tools but my well honed sin of avarice leads me to continually seek out, download, 'own' and 'use' the tools. Giving me the ability to talk, seemingly, knowledgeably about the tools.

## How do you define "test tool"?

I consider any tool that I use to 'augment' my test process (in any way) as a test tool. I have a fairly detailed exposition of this stance in my "Alternative Test Tools in Action" papers.

This means that my Exploratory Testing 'test tool' set includes:

- The Guide - an outliner
- Notepad++ - a text editor
- FreeMind - a mind map tool
- Greenshot - a screenshot tool
- ... and a whole bunch more ...

Note - none of the above advertise themselves specifically as 'test' tools, but they form part of my test toolkit.

Exercises:

- Write down what you consider a good description of 'test tool'.
- Write down all the software that you use during your actions as a tester - does your description encompass all the tools that you listed? e.g. if you write a test report using a word processor then:
    - Was that word processor on your list of tools?
    - Does your description encompass the word processor?

## Is open-source your 1st choice?

When I go looking for tools - I usually have one of the following motivations:

- My avarice switch has been toggled and I have gone on a general forage
- I have a problem to solve, which I think a tool could help me with

I look for open-source or free tools first. If I don't find one, I probably consider a custom tool (one that I have written) and only then do I consider commercial tools.

So to illustrate this I'll use a worked example.

Problem: We will release a new part of the website in a few days and I want us to focus on functional testing rather than checking all the links work.

Solution: Find a tool that will check all the links for me.

Approach to finding tool:

- Sourceforge.net and look for link checkers
- Freshmeat.net and look for link checkers
- Google search for "Free Web Link checker"

I find a whole bunch of tools this way. Because they are all free I can download them without any issues and try them out really quickly. I can even run a few of them at the same time if the problem warrants it and check the results.

So I eventually choose Xenu which was pretty easy since the tool was simple and worked quickly without any major issues.

After using Xenu for a while we start to learn its limitations and our requirements start to change. "I would find it useful if, on each page, it checked if our terms and conditions link was present." I recheck the tools we looked at and none of them seem to do that so I extend the search at this point to cover commercial tools - but to do that I have to have a clearer set of requirements so I write those down. And when I have a clear set of requirements in front of me I start to think that it might be fairly easy to write this myself - so I start looking at some of the tools I bypassed earlier like JSpider. And since JSpider has an open-source license I have no issues getting hold of it and evaluating it quickly to see if it meets my needs (it doesn't so I start experimenting with other custom solutions) - I eventually found a few commercial tools that looked like they might do it, but didn't really and finding out the information about commercial tools was harder than the free or open source tools since the vendors wanted me to 'register' for information and then I started getting phone calls from them.

I also know that if I go down the commercial route I'll have to make a budget case for it, and evaluate other tools to the same degree against a set of criteria and open myself up to a world of hassle that I can easily avoid.

So I use O/S as my first choice for a whole bunch of reasons:

- long evaluations
- I want to solve a problem not buy a tool
- no sales staff to hassle me
- easier to find out information
- easier to keep up to date with O/S tools - roadmap, releases, issues
- easier to get hold of the product
- less bureaucracy to deal with
- instant gratification
- I can change tools quickly when my requirements change (without worrying about a ROI from the previous tool)
- parallel use of multiple tools that cover very similar areas
- a lot of big companies use and invest in O/S tools so I can gain the benefit of their investments
- and let us not forget cost

As a generalisation - O/S and free tools tend towards specialisation and solve a single problem. Commercial tools try to cater for more stakeholders and widen their ability to hit an ROI so they specialise less, try to do more, and end up having more features than I would use - but charge for all of them.

I gravitate towards a small toolkit of multiple functions. Rather than a hammer that does everything.

## What free and open-source tools do you use?

I have huge list of tools that I use. Too many to list here. i tried to catalogue them once but that fell into disuse as I had to maintain it too often. I pick up tools, use them, discard them for others, drop the new ones, go back to old ones. "Ah, but that is because you have not found the one true tool to exactly meet your needs" - yes and I don't think I will because they change, and I want to meet my needs as they arise, rather than wait for a tool vendor to anticipate my need or respond to it too late.

I put a small list of tools into the presentation slide &lt;include gif here&gt;. But my memory stick has 92 folders (with mostly one application per folder - although one folder has about 30 tools in it). And these are just the tools that I carry around with me all the time. I have others that I know about that I can call upoon in more extreme situations.

Exercise for the reader:

- Look at the tools you use:
    - Do any of them have O/S counterparts?
    - Have you tried them?
    - Have you tried them recently?

## What about commercial tools?

I could discuss O/S without discussing commercial tools, but I want to compare and contrast a little.

> Note: when it comes to commercial tools I start to generalise wildly - for a number of reasons: bad past experiences, bad recent experiences, hard to find information about commercial tools (compared to O/S tools), since the marketing department writes most of the information I see about commercial tools I don't trust it. Please leave comments setting me straight - I will appreciate it because I really don't know how to keep up to date with commercial tools.

I use commercial tools too. But the ones that I use at work, I use because they were the incumbent tool when I got there. Were I choosing them from scratch I would go through the tool finding strategy above. The fact that I continue to use them means that the tools do help us solve our problems, and the cost of identifying a new tool roughly equates to the cost of renewing or existing licenses - and I don't currently have the time to engage in that activity.

Other reasons people give for using commercial tools?

- support
- long term cost
- easier to recruit staff
- easier to use tools

And one that I think comes in to play although I have never heard anyone mention it... plausible deniability.

Support comes up as a big deal. And the larger the installed base for the tool, the bigger a concern that becomes. On smaller teams, support should hopefully prove less of an issue. I have used commercial support, and I used them because I could not find the answer I needed anywhere else. The commercial support forums were not used in the same way as the O/S forums. On an O/S forum I often find the answers to help me, but I don't on the commercial forums, so the lack of visibility forces a support call on me.

Fortunately I work on a small team so we do not have the same support needs as a larger organisation.

Long term cost - people work on the basis of ROI and spread the cost of tools over the life of its usage and therefore the cost gets counted as smaller. But in order to do this, you have to stick with the tool long term so your choices get reduced and you limit your ability to respond to change based on the tool's capability and the vendor's capability.

Easier to recruit staff - every man and his dog has many of the commercial tools on their CV, but the people that number does not match the number of people that really know how to use those tools in depth. Finding skilled staff for any tool can prove difficult - or perhaps I just have a particularly fussy streak.

Easier to use tools - makes it easier for unskilled staff to use. Why would you not want skilled staff? I want technically skilled staff. For the commercial test automation tools I have experience with - I found that in order to get the best from those tools I had to move them into 'expert' mode where the 'easy to use' features did not apply so much. I think people mean easier to get up and running with quickly and achieve some superficial results - I think O/S tools have caught up with this but longer term the technical open-ness of the O/S tools proves a larger benefit.

## Trends that I have noticed

Commercial tools still use proprietary languages, or VBA. O/S tools span languages, and usually 'popular' languages that developers actually use. The more you use the language that the development project uses, the more you can call upon the skills of the whole team. the more you restrict the language to a 'testing' language - the less help you get and the more isolated your automated testing becomes. When will commercial tools use 'proper' languages? (note: I think TestComplete supports multiple languages).

Commercial tools seem to attempt to sell themselves on a 'never script again' basis - I want the flexibility to script and decide how to do it - spend your development effort somewhere else. O/S tools often have a very technical underpinning that you can access very easily.

Commercial tools seem to aim themselves exclusively at testers. O/S tools target developers and testers - meaning you get more assistance from developers and can actually work as a development team rather than 'the test team'.

Commercial tools try to take over your entire process. Want to automate the web, and the green screen apps, and the windows GUI, and the .net GUI? Using a single tool - go commercial. Or for O/S pick half a dozen specialised tools and combine them together with your chosen 'proper' scripting language. Obviously I have oversimplified dramatically here, but only because its true.

Personally, I want specialised tools that I can link together. If commercial tools could split out their components so I could just by the 'flash automation' part and link that in with the rest of my toolset - that would help me far more than trying to accommodate all the automation needs I might have (and some I'll never use, but will have to pay for anyway).

I find it harder to get information about commercial tools, than I do about O/S tools. I need information to keep up to date and experiment. Open out your information, add value with your web sites, create some blogs. Don't make me register to read information about your tool I don't know if I'm interested enough in it. Don't phone me if I download a demo - find better ways to make the sale.

## How to keep up to date?

I find it much easier to keep up to date with open-source tools than I do with commercial tools.

For O/S I have sourceforge.net, openqa.com, too many blogs to list. Coverage in Better Software magazine, Software Test &amp; Peformance magazine. But where can I go too find aggregated information about commercial tools? Much of the coverage in Testing Experience magazine relates to commercial tools, but where else?

*(note all three of the magazines above have free digital subscriptions - and while signing up for those, make sure you get Crosstalk as well)*

## Effective usage strategies

Ultimately, whichever tool type you choose - common strategies apply to both to get the most out of the tool.

For automation tools - use abstraction to isolate you from changes in the app, to help write more readable and maintainable tests, and even to allow you to change tools more easily in the future.

Make sure you pick a tool that fits well with your organisation, your way of working and has the feature set that you need.

Get skilled staff, and interview well to make sure that the staff really do have the skills you need to get the most out of the tool.

And lastly - never stop looking for alternatives. Never become complacent over your choice of tool. The tools evolve quickly - new tools spring up overnight - the zeitgeist moves. And if you use commercial tools then you can use the threat of switching to an alternative as a bargaining strategy at the next license renewal. Unleash your inner avarice to maximise your tool effectiveness.
