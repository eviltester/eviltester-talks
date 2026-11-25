# Original Presenter Notes

Prepared teaching notes from the PowerPoint. These are not a recording transcript.

## Slide 9 — Modelling

Summary of Modelling:

What was ‘that’?

What is ‘This’?

What are the differences?

What ‘has’ to be there.

What else ‘could’ be there.

## Slide 17 — Deep Surface

Words that we use affect experience

What do different words about a system affect us to think?

I’m Testing …

\[Name of Software\]

doesn’t mean much but gets you thinking in terms of the adverts, the feature set, what needs to be tested generically

\[Name of Software\] v1.1

extensionalised – changes in this version, what needs to be tested specifically

A System

an integration of parts, interfaces, data syntax, system theory

Software

a thing which runs on an operating system, interfaces with hardware (disk), data semantics

A solution

for whom? What problem?

## Slide 18 — Meta Model and ambiguity

UQ – All, Every, Just, Only, None, Nobody, Never, Always

MO – Possibility – Can’t, won’t,

\- Necessity – must, should, shouldn’t, ought, mustn’t

Presuppositions : A in p(B), A in p(~B)

Cause effect: Makes me, can’t help but

Comp Equiv: Means that

Nominalization: essentials of a process, discipline of software testing, effectiveness -ness

## Slide 21 — Identify Generalizations

Teaching notes:

“Only admin users can delete records”

Only (U),

presuppositions: records exist, records can be created/amended? Other types of users exist

Can (MO) – what if it read ‘should’ or ‘must’

“All records are validated by the front end when they are amended”

Use presuppositions to ask questions – 2nd, 3rd order presuppositions

P – there is a frontend, is there a backend? Only on amendment, what about create? Are records only amended on the front end?

U – All records (how many types?)

Validated (unspecified verb)

MO (must be) or what? What if invalid?

“All test cases must be scripted”

P – test cases can be written in a non-scripted way (because of modal operator)

When we identify modal operators (must), we can change them – should, could, might, need,

## Slide 23 — Identify Deletions

Teaching notes:

“This system must be the fastest on the market”

– which part of the system?, compared to what? At doing what? How much faster? Which market?

“The admin user will amend user details”.

\- when? Amend how? Amend which details? What other users are there? Amend other admin users? Only admin users? What makes an admin user an admin user?

Any other violations in the above sentences?

\[must\]

Lost performatives – according to whom?

## Slide 25 — Identify Distortions

Teacher notes:

“Developers deliver code late because they don’t respect the testers”

MR how do they know the developers don’t respect testers

C= \[developers deliver code late\] \[developers don’t respect the testers\]

Nom - respect

LP “Obviously,” obvious to whom?

Other violations – generalisations – “{all} developers”

“When developers don’t do any unit coding I get really annoyed”

MR – how do you know they don’t do any unit coding

CE – if they did unit coding testers wouldn’t get annoyed?

MR – how do you know testers get really annoyed?

LP – who says?

Other violsations – generalisations – which testers,

UQ ‘don’t do any’ – so if they did a little bit, it would be ok =&gt; Comparative Deletion ‘How much is ok’?

Unspec Verb – \[unit testing\]
