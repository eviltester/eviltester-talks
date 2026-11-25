# What Does Technical Enough Mean?

Original description by Alan Richardson, retained from the joint session preparation document. First-person statements below are Alan's.

This talk is paired with UX – What About TX for Test Automation? as part of a conversation track on Automation and People

I worry that I’m not technical enough.

I know how to code in multiple languages. I understand some of the protocols in use by web applications. I can debug in the browser. Using tools I can bend most systems to my will. I’m more technical than many testers.

But I worry that I’m not technical enough, and that neither are most of the people on the project. So there is a massive risk that serious technical defects will slip through and when found, will not be easy fixes.

I was using an application a few days ago. And simply by ‘using’ the application I managed to bring the entire web site offline. The root cause that was mentioned was a corruption in the JSON serialisation caused by concurrent access. I know what that means, I could test for that. But the project team had managed to architect a system where that could happen – but no-one spotted that technical flaw (which is architecture based) early. I worry that so many of our technologies are hard to test because no-one on the project is technical enough. Particularly not testers.

I work hard to increase my technical understanding. I know many people don’t. I don’t understand why not.

So what does “technical enough” mean for testing?

## Takeaways

- A discussion of levels of technical skills, knowledge and ability required for systems development.
- Technical does not mean ‘ability to program” – programming does
- Do we understand the technical architecture? If not, why not? Because it helps us test.
- Do we keep up to date with the technology we test? If not, why not?
- When the ‘technical people’ on the team, don’t understand the system, how do we identify technical risks?
