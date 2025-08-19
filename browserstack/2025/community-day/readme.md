# Browserstack Community Day 2025

- https://www.linkedin.com/events/browserstackcommunityday7356268863690338304/
- https://www.browserstack.com/webinars/community-day-august-2025

Video recordings will be added to Youtube.

Patreon Supporters received:

- Recording of the practice session
   - https://www.patreon.com/posts/136757617
- Summary and explanation of AI used to generate Summary
   - https://www.patreon.com/posts/136757982

## AI Generated Summary Video

This video was generated from a transcript of the talk using NotebookLM.google.com

https://vimeo.com/1110936270

The voice over was generated using a clone of my voice in Descript. This probably isn't as good as it could be because I'm still learning how to use desript.


## AI's Impact on Software Testing: Navigating Hype and Embracing Excellence

*AI Generated Summary of the talk*

This document summarises a practice run-through for a webinar discussing AI's impact on software testing, focusing on what testers can do to thrive in this evolving environment.

### The Current Landscape: Hype vs. Reality

We are currently in a period of significant hype around AI technology, with many people in awe of its capabilities. While AI is an amazing technology, many of the promises being made are **overpromises** that may not live up to the hype. If AI could truly do all it claims, it should be an easy sell, but this is not consistently happening, suggesting **unproven use cases**.

Every tool is now marketed as "AI-enabled" or "AI-native," regardless of whether the AI is appropriate or potentially dangerous. This era of advanced technology, where we don't fully understand how things work, can make AI seem like **magic**, reminiscent of Arthur C. Clarke's quote: "Any sufficiently advanced technology is indistinguishable from magic". This is akin to the "Wizard of Oz" phenomenon, where a powerful entity appears to solve problems with a chat interface, but there's a "man behind the curtain". We face hundreds, if not thousands, of AI models and tools, leading to a feeling of "too much to grasp".

Our goal should be to understand AI sufficiently to view it as **technology, not magic**, enabling critical thinking about its limits and how to use it effectively to improve, rather than replace, what we do. This approach will foster a much better relationship with AI.

### AI's Impact and Effective Utilisation

AI is already changing how software is developed and automated, more so than how it is tested.

#### AI as an Augmentation Tool

AI can be a highly useful **augmentation tool**, especially in coding.
*   **Coding Augmentation:** Tools like Copilot provide useful code completion directly within the IDE. Unlike traditional IDE completions that suggest method names, Copilot generates significant blocks of code, speeding up the process by allowing acceptance or quick editing (e.g., generating try-catch blocks).
*   **Code Review:** AI can effectively review code, asking questions like "Have I missed any edge cases?" or "Are these the right coding approaches?". This provides an objective (or subjective from the AI's perspective) additional view that helps developers think and improve their work.
*   **Code Explanation:** AI can explain unfamiliar code, such as different parts of Kotlin or Java used by a team member, saving time otherwise spent on documentation.
*   **Pull Request Review:** Copilot can review code in pull requests, offering another perspective that helps the developer pause and reflect on their work. The AI's suggestions, even if rejected, prompt critical evaluation.

The main point is to **do something yourself and then get the AI to provide a second opinion or new ideas**, rather than using it to replace your actions entirely.

#### Limitations and Appropriate Use

While useful, AI has limitations and should not be blindly trusted:
*   **Out-of-Date Information:** AI models are trained on past data and can provide wrong or outdated answers, especially regarding rapidly evolving tools or libraries. For example, AI might suggest using BrowserMob Proxy for network messages with WebDriver, even though this functionality is now built-in.
*   **Trust and Verification:** You cannot necessarily trust AI "out of the box" for every use case; always verify its suggestions.

### What Not to Delegate to AI

The speaker explicitly chooses **not to use AI for certain tasks**, often hearing others use it for them.

*   **Human-to-Human Communication:** Tasks like writing, reading, or summarising important emails and documents that involve human communication should not be delegated to AI. If AI is handling both sides of the communication, it becomes "AI communicating," which is a "complete pointless waste of time" and removes the human element of thinking about a problem.
*   **Critical Work Documents/Requirements:** For work documents or requirements where building a comprehensive mental model is crucial (a strong skill for testers), relying on an AI summary is insufficient.
*   **Writing Issues and Stories:** Effective and clear communication is paramount for issues and stories, and AI is generally not good at this.
*   **"Vibe Coding" as a Sole Approach:** This refers to generating code by simply providing prompts and reviewing the output.
    *   **Reliability:** It works "great until it stops working," leaving the user in a difficult position.
    *   **Code Quality and Standards:** AI-generated code is often not as good as human-written code, using different patterns and not always meeting team standards, making code reviews harder.
    *   **Maintenance:** AI-generated code is designed to be maintained by AI, but AI is often poor at fixing code, potentially entering a "death spiral" of random changes.
    *   **Lack of Control:** If you cannot code yourself, and the AI fails, you are "dead" because you cannot fix it.
    *   **Learning Obstacle:** Some people believe they don't need to learn to code if AI can do it, which is detrimental to skill development.

### The Imperative for Human Excellence

The speaker argues that if we can already do something, we should **augment and enhance** that activity with AI, rather than replacing it.

#### Why Excellence is Crucial

*   **Testing is Human and Exploratory:** Testing is a highly human and exploratory process, which AI is currently not reliably good at.
*   **"Good Enough" is Insufficient:** Many people might have "got away with being good enough" in the past, but "good enough is not flexible enough" for environments where AI is encroaching.
*   **Absorbing AI's Impact:** To absorb the impact of AI, we need to **learn to be excellent at what we do**. If you are already good, AI tools can make you better, consistent with historical technology advancements.
*   **Local AI Benefits:** Being skilled means you don't always need the most powerful AI systems; less powerful AIs that can run locally can be sufficient, offering environmental benefits and avoiding costly commercial tools.

#### The Real Danger: Misconceptions by Management

The true danger in testing and development is not the AI tools themselves, but **people, especially those in charge, who believe AI can replace humans**.
*   **Cost-Cutting Focus:** They may want AI to replace people, wrongly believing it will be cheaper in the long run.
*   **Over-Trust and Hype:** This belief stems from putting too much trust in AI, being in awe of it, and believing overblown promises, rather than sufficient experimentation.

### AI as a Crutch or a Tool: The Choice

Using AI as a **replacement** makes it a crutch, demonstrating that you can be replaced. If anyone can prompt an AI to do something, your role becomes redundant.

*   **Augmentation Strategy:** To avoid being replaced, you should **be part of the loop**. For example, use AI to generate questions that you then explore and answer yourself. If you use AI for functional testing, you are replaceable.
*   **The Goal:** The aim is to get better at what you do and use AI to augment your existing skills.
*   **Benefits of Skill:**
    *   **Effectiveness:** If AI works, skilled individuals can be more effective and explain its benefits to others.
    *   **Problem-Solving:** If AI fails, skilled individuals can understand *why* it's not working, identify errors, and fix issues, preventing complete reliance. When "vibe coding" goes wrong, and you lack coding skills, you are "dead".
    *   **Optimal Use:** AI works best when used by skilled people, not those who lack understanding.

The speaker's 30+ years in IT have involved continuous learning, adapting to new roles (programming, testing, automating, managing), and expanding skill sets, which provides a strong foundation for navigating new technologies.

### Historical Context and Recurring Hype Cycles

The current AI hype is not unprecedented in the IT industry.

#### Lessons from Past Technological Revolutions

Throughout history, technologies were touted to eliminate the need for programmers and testers, but none succeeded.
*   **Formal Specifications (1970s/80s):** Mathematical specifications were supposed to eliminate defects.
*   **Fourth & Fifth Generation Languages (4GLs/5GLs):** These promised to implement solutions by simply defining the problem, eliminating much procedural code.
*   **Computer-Aided Software Engineering (CASE):** Drawing diagrams was supposed to generate all the code, removing the need to ever look at code. This is comparable to "vibe coding" with prompts, expecting output without needing to understand the underlying code.
*   **AI in the 1970s & 1980s:** Early neural networks, now backing LLMs, were expected to change the world but lacked the necessary machine power.

These past advancements **did not remove the need for programmers and testers**, but they profoundly changed software development by providing **new and better development tools**.
*   Improved IDEs with code completion and in-context documentation.
*   Continuous integration and unit testing frameworks.
*   Flexible programming languages.
*   Better software project management (Agile, iterative development).
*   Automated controls and testing.

These innovations **augmented and enhanced the skills of programmers and testers**, making the best people better and easier to become better. They **didn't dumb down** the process.

#### Current Hype and AI's True Nature

We are in another hype cycle, following quantum computing, the metaverse, and blockchain, none of which have strictly changed the world yet. The current focus is on Large Language Models (LLMs), "model context protocols" for LLM communication, and AI agents. We will learn new ways and create new tools, but the speaker believes AI **will not remove the need for programming and testing**.

*   **AI is not an expert tester:** While you can prompt an AI to act as an "experienced tester" and generate test ideas, it's merely "pretending to be". Similarly, it can "cosplay" as a pirate. It communicates what we expect based on the prompt; it doesn't possess actual expertise.
*   **Humans must evaluate:** If you use AI to generate test ideas without first having your own understanding, you are at a disadvantage, lacking a baseline for evaluation and potentially missing critical gaps or focusing on unimportant suggestions.

### Strategic Use of AI: Prompting Thought, Not Answers

**Do not ask AI for entire test plans, strategies, or test cases**. Instead, use smaller prompts and do the initial work yourself.

*   **Check Your Work:** Use AI to check your work by generating a list of things you can evaluate against, helping you identify what you might have missed.
*   **Prompt Thinking, Not Answers:** A more effective approach is to ask AI questions that prompt your thinking and expand your understanding. For example, instead of "Give me the answers," ask:
    *   "What questions should I ask to expand the system description?"
    *   "What questions should I ask to expand on the system architecture?"
    *   This allows you, as the expert, to evaluate the AI's questions against your own understanding and identify areas for further thought.
*   **Second Opinion:** AI should primarily serve as a **second opinion review system** after you have completed your own work.

Regarding how much AI one needs to learn, a cybernetician in the 1970s noted, **"It's not necessary to enter the black box to understand the nature of the function it performs"**. We don't need a machine learning degree to understand how LLMs basically work or what they do to use and evaluate them. We need to understand:
*   What people are saying AI will do.
*   What the impact of that would be.
*   What would change.
*   What the risks and implications are if it goes wrong.
*   How it impacts testers and testing.

If AI is hyped to replace an area you care about (e.g., test ideas, accessibility testing), you should learn to do that task well yourself. AI can be viewed as an **"autonomous junior team member"** that needs someone to review and manage it, especially since it "will go wrong". The ultimate skill level is to be able to do something yourself, then let AI augment your work. If you cannot do something now, AI can help you learn by providing generic answers and targeted guidance.

### Misconceptions and Responsible AI Use

**Fundamentally, we need to learn and understand enough to remove fear and awe**, enabling critical thinking and experimentation with AI as a technology, not untouchable magic. Experimentation is key to understanding its strengths and limitations.

#### What AI Cannot Do and Security Concerns

*   **AI cannot think** and should not replace algorithms; reliable algorithmic tools are preferred.
*   **AI is not reliably repeatable** and can "randomly do something else" or get "lost" if asked to do too much, as it is heavily reliant on context. It works best with small, focused tasks where context is limited.
*   **Security Risks:** Cloud AI tools may be sold at a loss because companies want to use your data. Your chats might be reviewed, and information could become public due to security issues or hacking. Always be careful about data confidentiality, especially with work-related information. Companies should ensure paid licenses or authorization for cloud AI use. We have spent years implementing controls to prevent human mistakes; similar limits are needed for AI to prevent issues like deleting production databases.

AI is useful when something is very hard to do with an algorithm. The speaker uses AI to **summarise learning material** (YouTube videos, blog posts not directly work-related) and to **generate content that prompts thinking** (e.g., questions to ask).

### Practical Steps for Excellence and Learning

#### Continuous Skill Development and Practice

*   **Be Excellent at Core Skills:** Continuously practice core skills. If you are good at these, AI can augment your work.
    *   **API Testing:** Visit API Challenges (the speaker's site) which offers multiple APIs to test, tool recommendations, and exercises with guidance.
    *   **Web Application Testing:** Use EvilTester.com, which hosts various applications (like the "seven-character validation" example) with suggested exercises.
    *   **Practice is Key:** The most important thing is to keep practicing and developing. Remaining "good enough" is static and insufficient to absorb the impact of AI or other new technologies. **Excellence requires continual growth**.

#### Experimenting Safely and Effectively with AI

*   **Learn and Experiment with AI:** Beyond core skills, actively learn about and experiment with AI.
*   **Prioritise Local LLMs:** The speaker uses local LLMs more than large cloud chat interfaces due to data confidentiality and security concerns.
*   **Personal Experiments:**
    *   **Building an Application:** The speaker is creating an application to learn AI libraries and understand AI's capabilities.
    *   **Code Augmentation:** Using local tools like Code Llama with OLAM and the continue.dev plugin for IDE-based code completion.
    *   **Learning Aid:** Using AI to help study and learn.
    *   **Documenting Findings:** Experiments are documented on GitHub (github.com/eviltester/icip-supported-testing-experiments) to share findings on AI's limits and successes.
*   **Evaluate Hype Through Experience:** The goal is to learn through experience and evaluate hyped use cases to understand what truly works. Using AI to augment your work deepens your understanding of your own processes.

#### Finding Resources and Practical Experimentation

*   **Educational Material:** Seek out educational material rather than just hyped content. Look for free tools to experiment with to get a feel for the scope and potential uses.
*   **Specific Experimentation Examples:**
    *   Generating counter strings (AI not good at algorithmic approaches).
    *   Creating test ideas for simple applications (requires significant review, better as a second opinion).
    *   Generating test data (limitations in quantity, format, uniqueness).
    *   Summarising learning material and creating simple JavaScript code in the console (found valuable).
*   **Recommended Tools for Experimentation:**
    *   **Google Notebook:** Free tool used for summarising YouTube videos, helping decide whether to watch them by quickly reading a briefing document.
    *   **AI Assistance in Google Chrome:** Free browser tool to explore web pages, learn HTML, debug/write JavaScript.
    *   **OLAM:** A local LLM host that allows running LLM models on your machine for chat interfaces, good for learning how to use new libraries (e.g., Playwright).
    *   **continue.dev:** A free IDE plugin for local code completion, connectable to local models like Code Llama via OLAM.
    *   **Hugging Face:** A great site for learning how to code with AI, offering many courses.
*   **Start with Augmentation:** Begin by using AI to augment tasks you already perform well, as this allows you to evaluate results and see if AI fits your workflow.

### Core Principles for Engaging with AI

*   **Don't Panic:** Learn about AI at your own pace and have fun.
*   **Human Advantage:** Humans have an advantage because LLMs are often out of date (unless using Retrieval Augmented Generation - RAG). Humans who use AI to augment their skills will be more up-to-date and creative than AI alone.
*   **Avoid the "Crutch":** Humans who use AI as a crutch are replaceable; **improve your skills and use AI to help you do that**.
*   **Strategic Use Summary:**
    *   Do not proxy direct human communication.
    *   Do not replace your thinking.
    *   Do not use for things AI can do algorithmically.
    *   **Do use AI to augment your work** (e.g., do the work, then use AI to identify missing elements, write simple code).
*   **Embrace the "Fear of Missing Out" (FOMO):** It's fine that no one can keep up with everything in AI. If AI truly revolutionises testing or development, you will know about it because a technology that works and revolutionises things cannot be ignored. If it truly makes tasks easy, it will also be easy to learn.
*   **Prioritise Augmentation Experiments:** If AI works, you'll be better; if not, the extra practice of your core skills will still benefit you.
*   **Question and Experiment:** Be open to using AI if it helps, but actively question where it adds most value and experiment to determine this for yourself, as value depends on individual experience and existing skills.
*   **Sustainable Pace:** Learn at a sustainable pace, without neglecting core skills or putting all your hopes solely on AI.
*   **AI Needs Good People:** AI will never remove the need for skilled humans. **Strive for excellence in doing the job well without AI**, because if AI works, you'll be even better, and if AI fails, your excellence will allow you to step in and fix it.

Ultimately, **to survive with AI, we need to be good; we need to be excellent**.



