# Speaker Notes — Unused Draft Slides

These are the original embedded preparation notes, not a transcript or evidence of live delivery. Slide numbers refer to this four-slide unused deck.

## Slide 1 — Process Risk &amp; Consultancy

I use “Process Risk” when I consult in organisations. It’s basically how I know what questions to ask and where to look when I’m consulting.

I ask questions to understand the process in use, and why people do certain things. Is it because of ‘ritual’, is it because of ‘check and balances’.

When I have a model of the process I analyse it to see what I think the likely outcomes are, and what might go wrong with it, and what would happen if it did:

e.g. if its an agile process and the stories take longer to code than people expect then does the process flex to accommodate that or does it look like the team would compromise on the testing performed on the story, etc.

I perform the same analysis on the ‘process’ model as I do on a model under test.

I model it. I try to observe the process. I think about what I’ve seen. I interrogate the people in more detail to look at examples now, and past. I try to take part and see how the process adapts.

## Slide 2 — General Risks &amp; Process

We create process to mitigate risk. An “Agile” process is lightweight but most of the ceremonies exist to mitigate risk, therefore when a team ‘customises’ their process, if they were not aware of the risks, or did not realise that the ‘ritual’ was a risk mitigation process, then they might open up new risks.

In general with software development we start with the notion that ‘what we build might not work’.

If we are coding fast, and trying to allow a lot of change into the system, then we want low level assertions to make sure that we haven’t changed anything that should remain stable – so we write @Test methods with assertions to check preconditons and postconditions. If we don’t do this, then our process has the risks that when we change something we impact parts of the system unexpectedly and either don’t detect that, or detect it late, when we don’t know what code change actually caused that impact. If we have low level assertions that we can execute frequently and quickly then when we make a code change, if the assertion fails then we know what code change caused it.

## Slide 3 — General Risks &amp; Process

If we are trying to avoid a lot of documentation that we would maintain then we operate on the basis of short statements of acceptance criteria that we develop to. These are discussed to create a shared understanding to try and minimise the risk of omission and ambiguity. We might even try to automate them using a DSL which reflect the shared understanding as spoken. This increases the amount of work the team have to do, and might duplicate some of the low level assertion checking, but might be viewed as important to have a living document of the communication which detects change, but at a slower speed than the unit tests.

Etc.

All of the points are check and balances which exist to mitigate risk and if we remove them without understanding that then we increase the number of project risks and potentially the probability of “functionality might not work”.

## Slide 4 — General Risks &amp; Process Risk

Even if we do the mitigation processes. There are risks.

We might not have enough feedback or review processes to know if we have implemented the mitigation well enough.

IT is important to view all processes as ‘risk’ and build enough feedback mechanisms in to detect if the risk manifests.

And keep thinking about ‘what risks are inherent in this process’. Do not assume that a ‘mature’ process is risk free. Aim to continually adapt and evolve. Risk mitigation, identification and detection can help you do that.
