# Preparation Notes — Resolutions and Trends in Software Testing

Alan Richardson's pre-event speaking prompts for the Xebia meetup in Hilversum, January 2017. These are the notes published on the [conference page](https://www.eviltester.com/conference/xebiameetup2017_conference/), preserved in the author's words. They are preparation material rather than a transcript of the talk or Q&A.

## Trends:

- **monitor our discipline for signals and trends**
   - keep up to date
   - monitor social media
   - read/watch as much as you can
   - don't stress if you miss something
   - you don't have to follow trends
   - pursue stuff related to your job
   - everything links

## **Don't panic.**

- **"machine learning"**
    - input - process - output
    - not deterministic - same input, different output over time
    - challenge is data
    - keep using same data, it already 'learned' that
    - need to keep finding 'new' data, with deterministic or probabilistic results
    - monitoring in addition to testing
    - understand the 'learning' algorithm for risks
        - risk that it can be taught 'the wrong thing'

- **"iot"**
    - most stuff on testing IOT I see doesn't seem to be IOT
    - seems to be - test stuff on a PI
    - which is fine if that is IOT, but it means IOT is
        - HTTP
        - REST
        - Binary protocols over TCP
        - etc.
    - BUT TOOLS!
        - if you're building it - build it to be testable
        - if you're not building it, use its interface
    - Much the same - BUT RISKS
        - each device will have its own risks
        - less memory
        - slower - vulnerable to too many messages?
        - upgrades
        - factory resets
        - storage space


- **"tactical and strategic automation"**
     - people still seem to struggle with the mix between exploratory testing and automating
     - because the same people, not because the same thing
     - exploratory testing - testing
     - automating - different - but we use as part of our test process
     - I prefer 'tactical' or 'strategic' automating
          - and is your automating supporting your exploratory testing

- **'tool developments'**
   - Visual
   - Galen
   - Frameworks
   - Mobile


- **My Resolutions:**
   - get a better handle on how I model testing
   - live up to "I test things and help people test better"
        - take responsibility for my model of testing
        - explain and share more
        - improve what I do
        - offer an alternative

- **Implemented by:**
   - instagram
   - more youtube videos
   - more 'this is how I do it - mistakes and all'

- **responsibility**
   - your own definitions
   - your own explanations
   - ask yourself 'why'
   - Map everything back to testing

- **reflect and share**
   - blog
   - social media
   - youtube

- **learn more about what you already know**
   - one thing we often do and fail for resolutions is pursue trends "machine learning", "iot" and fail because it is too much new stuff on top of what we already have to do
   - most things seem to be linked so if you pursue a path, then it will lead to other areas
   - people fail because the want to 'learn this new thing' which is unrelated to what they do
   - expand what you do and find out where it links to the new thing, then you learn and immediately apply
   - e.g. learn javascript - node, javascript apps etc. Or dev console, for existing apps you are testing, expand
   - Apply what you learn

- **offer an alternative**
   - if something is 'wrong' then demonstrate how it can be different
   - lead by example

## Resolution Processes:

- **find the whys for your resolutions**
    - Go higher level on your resolutions
- **every day goal renewal**
   - define where you want to get to
   - keep making progress to where you want to be
