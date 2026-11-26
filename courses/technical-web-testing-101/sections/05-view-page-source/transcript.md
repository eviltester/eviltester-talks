# View Page Source — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [00:55:58–01:26:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3358s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [00:55:58 — View Page Source Introduction](#chapter-01)

- [01:03:46 — Exercise: View Page Source Challenges](#chapter-02)

- [01:09:02 — View Page Source Challenge Slide Retrospective](#chapter-03)

- [01:17:39 — View Page Source Challenge Live Retrospective](#chapter-04)

<a id="chapter-01"></a>

## 00:55:58 — View Page Source Introduction

**[00:56:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3370s)**

Using the browser to view the page source. It seems simple. View the source. So, what can you as a tester do with that? When you type in a URL, the browser issues a get request to the web server and then it loads that response into the browser. The eventual page source that is returned is what you see in the view page source. Right? When you do view page source, you're seeing the response that comes back. This is the first place in a browser that you can access the raw source.

**[00:56:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3405s)**

And this is the building blocks of that web page. And the reason this is important for testing is that this source is different from the rendered source that you'll see in the DOM view. This is essentially the raw source that you'll see if you capture the traffic in a proxy or view in a network view. It doesn't have any code created by JavaScript. There's no extra DOM elements that have been added after issuing some Ajax request. This is it. This is it raw at its most basic.

**[00:57:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3432s)**

This is the essence of the web page. You found the source, right? And if you're testing websites, one of the basic skills you need to develop is learning to read HTML. HTML is the basic building block of the web and you need to understand it. So, how much HTML do you need to know? Well, I'd start by asking what is the HTML being used on the project that you're testing now? Right? That's the basic amount of HTML you need to know to understand the site and the system that you are currently testing.

**[00:57:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3468s)**

If you don't understand the system at this basic level, how are you going to look at the GUI and make a risk assessment of where to spend your time when you're testing? By looking at the page view, you will see what HTML tags are in use. You'll see that the page is split into a head and a body section. You need to learn the difference between those two sections. What goes in where? Why do they exist? When you look in the head, you might see JavaScript.

**[00:58:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3494s)**

You might see some meta tags. You might see some link tags. Do you know what they all do? Do you know how they impact the functionality of the system? Do you know what risks they potentially add that you have to test for? When you look at the body, you see the normal HTML tags that are used for rendering the page. Some of those tags don't just have a rendering component. They also have a functionality component and that will differ between browser versions.

**[00:58:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3524s)**

For example, input types like file and date and tags like audio and video. You have to be careful when you test these because you don't want to test the browser. You want to test your system or your code on that browser, not the browser implemented functionality. You need to learn HTML so that you don't confuse browser functionality with application functionality and waste time testing the browser instead of your application. I've been confused by the HTML 5 date tags and started to test the drop- down date components thinking it's a JavaScript ajaxy component when it's the inbuilt browser functionality.

**[00:59:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3570s)**

We don't want to do that when we're testing. But if the tag has a JavaScript event listener on it, then you do want to test the interaction. You might see that in the source, any of the onevent attributes will show you that an interaction there needs testing. But since that is not the only way to set up an event listener, you might not see that in the page view, but it's the first place you'll start to look, and they're the simplest event listeners to try and test.

**[00:59:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3599s)**

It's also important that you learn the functionality of the page view and how to access it in the different browsers. And in some environments, you're not allowed to install tools. If you're testing web applications, guarantee that you will be allowed to install a browser. So the browser becomes one of your most important test tools and you need to learn the functionality. So the page view is one of the most important function, one of the easiest functions to start working with. In Firefox, the page view will highlight some syntax errors.

**[01:00:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3633s)**

Other browsers don't do this. So Firefox might give your testing an edge for this really basic functional check. And you might spot really simple errors easily. When the page is interpreted by the renderer, the renderer knows how to fix simple syntax errors or it thinks it knows how to fix simple syntax errors. But sometimes when it does that it might interpret them incorrectly or inconsistently or the CSS might not be applied effectively because the rendering is changed slightly. So you can spot the error early in the page then it might prevent an emergent behavior problem later and it's a much simpler fix if it's just an HTML syntax error.

**[01:01:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3679s)**

You'll also see that some page source views are clickable, so you can use them to explore the source. Some of the links are to CSS files and JavaScript files that are included, so you can go off and read those and learn more about how the page works. Sometimes there'll be links to other web pages and some of the browser views open those pages in source view, so you start to surf the web in source view and learn more about what's going on.

**[01:01:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3706s)**

You can also search the source view using control F or command F on the Mac depending on the browser. And some searches I use are to search for HTML comments. The less than exclamation mark dash dash like looking for what are the HTML comments in this page because sometimes comments reveal information that should not be revealed, right? You're giving away information to hackers or viewers or code that you've commented out that really shouldn't be there and might, if it was enabled, cause problems.

**[01:02:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3737s)**

Or there might be hints that perhaps the developers or coders are not as confident about some of the functionality as you might expect. They might have incorporated a library that they don't understand. These are technical risks that you can test for. And when I'm viewing CSS, I can search for comments slash asterisk to find the comments in the CSS file. And in the JavaScript, I'd look for slash-asterisk and double slash, the two different JavaScript comment forms. The page view generally has syntax highlighting.

**[01:02:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3771s)**

This can help you differentiate between the content and the code. I often find it easier to scan the page view for spelling errors than the rendered view simply because it's in a single font. There's less to distract me and I find that that helps me focus on the content of the copy in the page more easily and I can ignore the code parts. This is a really powerful but underused feature of the browsers probably because we've all become so used to the web development tools and testers and developers forget that the page view exists and it has changed over the years and become more powerful.

**[01:03:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3810s)**

Right? Page view is worth adding to your arsenal. You will find and spot things that no one else will because no one else values it. And these challenges that you're going to do going to help you drive that home and see the value.

<a id="chapter-02"></a>

## 01:03:46 — Exercise: View Page Source Challenges

**[01:04:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3840s)**

So challenges is pretty simple. There is a PDF that expands on these challenges. So have a look at that. Essentially for each browser I want you to identify how to access and use the view page source functionality. Try each way of doing it and just see which ones you prefer and what value each one adds. I mean first of all you have to figure out how are you even going to access the view page source. So try right-clicking. There's a Ctrl+U command on a lot of the browsers.

**[01:04:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3866s)**

Command alt and u on some of the browsers. On a Mac, you can prefix a URL with the view hyphen source colon instead of http slash. That will view the source. See what other ways you can figure out and see how they change between the different versions of the browser. So have a look on Chrome, have a look on Firefox, have a look on IE, have a look on Edge, have a look on Safari on the Mac if you've got it.

**[01:04:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3890s)**

When you got all the different browsers running, what are the differences between the different page view source in the browsers? Some of them you can click through in the URL, some of them you can't. Write down the differences that you spot so that you know what each of the browsers is good for. And remember, the functionality changes with the different browser versions. So, keep going back. If you're using the page view regularly in your testing, then when a new browser comes along and it's changed, you'll see the difference.

**[01:05:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3921s)**

But know how might those differences ch change your testing? What browser are you going to use for what functions? Because if you can answer that question, if you can see, I can see a difference in Firefox. How does that difference help me in my testing? You will be well on your way to gaining an edge over other testers and developers because too many people use the features for what the instruction manual or the tutorial tells them to do instead of identifying alternative ways of using that functionality and increasing their requisite variety and how they deal with applications.

**[01:05:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3957s)**

Next, I want you to view some real page source, right? The projects that you work on or just projects on the web. Because when you start looking at real code, you need to start identifying gaps in your knowledge. You'll see tags that you don't know. You'll see HTML constructs that you don't understand. So, you need to note down what they are so that you can spend some follow-up time plugging those gaps. But also, we want to see whether we can find any problems on those page.

**[01:06:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3985s)**

See if the brows the page view shows us a problem and then helps us spot problems faster. So look at the page, find identify HTML concepts in the source that you don't understand and look them up. Look at the linked CSS. Do you understand it? How much of the page functionality is actually CSS styles? Right? Does it have any hover markup? Because if it does, that's the CSS doing the work, not JavaScript. There may not be any real functionality to test.

**[01:06:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4017s)**

It may be rendering functionality that you're looking at. Look at the JavaScript. Is it readable? Do you understand it? Are there any comments in the page? Try and find them. Use control F, command F. Have a look for comments. Look with the less than exclamation mark hyphen hyphen. Look for HTML comments. Look at some of your favorite pages. Look at the page source. How different is the HTML that they're using compared to your system? Does do the system seem more complicated than they need to be given that the functionality they've got?

**[01:07:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4049s)**

Maybe you can dig deeper and find out why they're so complicated. Maybe what seems complicated at the start isn't really and is actually very simple and is actually very nice and neat. And maybe your system could be doing it that way. Maybe they're using a lot more CSS than you are. Maybe they've delegated what looks like functionality off to the CSS rendering engine where you're doing it with JavaScript which might have more risk when you start doing cross browser testing. When you've identified gaps, what I want you to do is start looking for references, reference sites that can help you plug those gaps.

**[01:08:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4083s)**

So, do a search, try and figure out what the different HTML tags mean, and just build a small list. Now, remember, in the summary section that comes after this, I've put down some links that I found. I've noted down some observations I've made on websites during the testing when I was doing this investigation. But do yours first. come up with your own list because you'll come up with reference material that will fit the current level of knowledge that you have because you'll be looking around trying to find a site that helps you understand what this tag is and that site will make sense to you at this point in time.

**[01:08:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4116s)**

Some of the references I've got may be more advanced and maybe something that you come back to when you know a bit more. So, it's up to you how long you spend on this and can easily spend an hour, a couple of hours doing this. You saw even in just the demo that I did at the start that there were issues on my website shown by the Firefox browser. There's so much information in here to look at when you start drilling into the view page source on real production websites.

<a id="chapter-03"></a>

## 01:09:02 — View Page Source Challenge Slide Retrospective

**[01:09:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4158s)**

So, we start with a mandatory warning. Do not proceed any further unless you have completed the view page source challenge. If you do carry on, then you're putting your own learning at risk because really you want to do the exercises before you watch my summaries because these are just my interpretation, my summaries, and it's not even everything that I did.

**[01:09:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4180s)**

So let's have a quick look. So this is straight out of my notes as I was doing my exercise. I made notes in Evernote and I've just copy and pasted some of the results in here. So this is me looking at how do I start the view page source. So all of them have a right-click approach. Edge only has a right click. Most of them let you do control. On the Mac it's slightly different. It's either Command+U or command and Alt+U for Chrome.

**[01:10:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4207s)**

And mo all of most of them have the view source prefix. So you can type in view- source colon and type in the URL instead of http slash and you will visit that page in view source mode. It's like doing a curl on the source. You're viewing it in the browser. Really handy. So remember a few of those. But if you can drill in control or command or command Alt+U into your fingers, then you'll start using page source all the time.

**[01:10:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4239s)**

So all the browsers have very similar functionality, right? They all have color coding for the syntax. They all have line numbers. They all support find. All the basic functionality is in there. There are differences between it particularly in clickableness. They operate slightly different there. Some of them do inspect and they act differently.

**[01:10:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4256s)**

So let's have a quick look. So I1 the view is so basic. There's no clickable links. However, viewing it, reading it, I thought it was a lot easier. Just the syntax view was readable. I could see the copy, the text of the web page differently from the code. That was a really useful color. Maybe it's just my monitor. Maybe it's the color scheme I've got. But I was the one that I preferred to actually view code, view the source, looking for copy issues on.

**[01:11:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4285s)**

Chrome was great at finding stuff. The same as Safari. It's got a great way of highlighting the finding aspects. Chrome's got a handy inspect function so that when you inspect the source, it shows you the DOM view. So you can actually see the difference between the source and the rendering view. In Firefox, the inspect is interesting because it inspects the source code view of the source code. So it's you're seeing all the span elements that Firefox has used to render it, which is interesting.

**[01:11:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4312s)**

Chrome, unfortunately, does not open the links in source view. It opens them as a rendered view. So you can't surf the web in source view. It looks like you can because you do when you do the CSS and JavaScript, it opens those up in a new page. But if you click on a browser that renders as HTML, then you get the HTML rendered view. Edge, I was using the virtual machine from modern.ie because I hadn't upgraded my Windows machine to Windows 10.

**[01:12:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4340s)**

Find I like the find and edge. So Chrome and Edge are both equal in terms of their finding. Edge again does not have clickable links but you can controlclick to open the link as a source view in the debugger. So everything is done in the debugger in Edge which isn't quite as as nice as opening up a new page but is useful and it drags you down into the web developer tool. It's it claims it's opening images but it didn't.

**[01:12:43](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4363s)**

Now Edge is still early days so I guarantee and we know Edge is going to change over time. So keep looking at the debug view the page view in Edge. It's going to get better. Firefox kind of won out. It shows syntax errors as a massive boon when you're looking at it. You want instant defects. Firefox is going to pick them up.

**[01:13:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4384s)**

Now, syntax errors aren't necessarily a big problem, and it's it's sometimes hard to justify fixing them. However, it can lead to rendering issues. It can lead to problems that are really hard to diagnose. It can stop mismatching in CSS. Just get rid of everything. Make sure the HTML is clean. Put it through a linter as part of the development process if you want to, but is a this is just a final check. Open it in Firefox, see if there's any syntax errors coming through.

**[01:13:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4409s)**

Firefox is great for surfing the web in source view because you click on links and they open in source view. And remember, controlclick opens it in a new window. The find is quite nice, but it doesn't show it in the scrolling bar, so it's not quite as good as Chrome. The inspect view again shows the source code view of the source code. So I mean it's it's really just nonsense that part. But the syntax highlighting absolutely brilliant completely amazing. Safari Safari is pretty much the same as Chrome.

**[01:14:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4444s)**

It's quite nice to use. If you're on the Mac it's it's a good thing. The you can click through. There's nothing really special about it in comparison to anything else but it's probably going to be your default on the Mac. And it does have the source view. It's embedded in the kind of resources tab. Not quite as easy to navigate through because of that, but it's still useful, but I still prefer to use any of the other browsers really except IE, which is really just for readability.

**[01:14:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4468s)**

So, I'm going to conclude with some Firefox is great for syntax errors. Use it for that. Brilliant. Navigating through the source, so you're learning what you're doing. Absolutely brilliant. Chrome and Edge are pretty much equal for finding stuff. And for me, IE was good for reading copy, but I could probably drop IE out the page source view and use Firefox and Chrome for reading copy and I'd probably fine. So, I would probably use Firefox and Chrome most for the page view.

**[01:14:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4496s)**

Now, we've got the references. What references did you find? Again, this is straight out of my notes. It's copy and pasted. You can see I tend to write my notes in Markdown. The Mozilla Developer Network, it's a great site. It's really up to date, lots of detail, but it's I mean it's so authoritative and important for web developers that it's sometimes hard to read when you start. Therefore, beginners, we tend to look at w3schools.com. W3 schools used to get a lot of flack.

**[01:15:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4528s)**

Professional web developers don't like it. But in terms of showing you the basics, really good, really clean, and it's got examples. I used some of the examples in the early slide. You. It shows you the tags. It has a little snippet of HTML. You run the snippet, you see the impact. It's very useful. The developers.whatwg.org. again, it's for professional developers. But it's community built. Sometimes it's useful, sometimes it's not. Same as web platform.org. It's community-driven. It has gaps. Where it has coverage, it's really good, but where it has gaps, it's no use to you.

**[01:16:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4561s)**

So, that's what Stack Overflow, I guess. I haven't put that down here, but Stack Overflow comes up when I do searches. So, I guess I should really have added that in here. Now, I found lots of errors. I'm going to show some of them in the live view in the next video, but I found syntax errors everywhere on my sites. I really need to do more of this this type of testing on my sites, but I found them on other sites.

**[01:16:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4584s)**

I found them on commercial sites that I rely on for my business. So, I'm flagging that to those sites. And I learned stuff. I learned that meta tags in the body were not illegal in HTML 5. I'm so used to older HTML with working growing up coding in HTML 3, HTML 4. I didn't realize HTML 5 had changed some of the rules about where we can place tags, which potentially me as a tester makes me start thinking, well, there's risks in the future that if people are using older browsers, then we're going to start using tags in places those browsers don't expect because even though Internet Explorer and Microsoft have gone right, we're not supporting 8 910 anymore.

**[01:17:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4625s)**

People are still going to use them. So, we're still going to have to look at those sites in here. And if we start using HTML 5 with tags all over the place, who knows what's going to happen. So, there's still risks and issues in there. Personally, I'd probably be tempted to stick all the meta tags in the head and keep them there, even though that's allowed in HTML 5. So, that's a just quick look through some of the thoughts. It'll be really interesting to see what you found.

**[01:17:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4649s)**

So, hopefully you'll start leaving comments in the forums and tracking what you're doing. But again don't look in the forum, don't look at other people's comments until you have done the exercise on your own.

<a id="chapter-04"></a>

## 01:17:39 — View Page Source Challenge Live Retrospective

**[01:17:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4672s)**

So I'm just going to give you a quick look at kind of things I found when I was doing this on live sites. Let's jump through some of the browsers here. So in IE I IE is okay. The view source I mean it's so basic. This looks like a notepad that's an RTF. You can't click on any links. There's I mean there's really nothing you can do here. I can select all I can find. But I mean that dialogue I mean it's it's not nice to work around.

**[01:18:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4704s)**

I'm moving this all over the place. adequate. I wouldn't use but what I like about IE11 is the readability I can read this the copy stands out against everything else. So much more readable than the other browsers. I like that about it. Let me close down IE here because that's that's what I like about IE.

**[01:18:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4726s)**

Let's have a quick look at Edge. Now Edge, I'm using Edge here on a virtual machine. I'm using one of the virtual machines from modern.ie, IE which is the Microsoft site where they have free virtual machines for all the different operating systems and all different browsers. So you can test for cross browser compatibility.

**[01:19:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4744s)**

Now in Edge when you do the inspect or do the view source it comes up in the debugger which is not nice but is useful. Now this is a one of the teaching platforms I use where my courses are hosted. Now what I found interesting here is I'm viewing the source. Now, this is the first time I saw this when I was viewing the source because I viewed the source of the training platform in a couple of different browsers. And this only showed up in Edge, which means that the server that the training platform is on must be detecting the browser and giving different code out for the different browsers.

**[01:19:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4780s)**

I didn't know that. By looking at the source, I can see this obviously because I mean there's things here that are not in the other browsers, but also I'm looking at this thinking meta tags. Wait a minute. meta tags are supposed to be in the head section. They're not supposed to be in the body. So I had I this doesn't look right. So I had to go and look this up. So I went off did my usual do a quick search.

**[01:20:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4806s)**

Meta tags in body stack overflow is the first thing that comes back which is great. And I'm looking through this and I did I learned something new. I did not realize because I didn't realize that in HTML 5 you're allowed to put meta tags in the body. Now what you're supposed to do is put the right doctype in the document. So you're learning a bit more about HTML. If I look at the doctype at the top here, I can see this is doctype HTML which is essentially doctype HTML 5.

**[01:20:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4835s)**

This is the new format for doing it. And it's basically saying I'm an HTML 5 page, so I'm allowed to do what I want. And I want to put meta tags in here because this is responsive. It's responding to the browser. And it's only doing this in IE. And IE is an HTML 5 compatible browser or an Edge. Sorry. Edge is an HTML 5 compatible browser. This I mean it's it's valid. It seems reasonable. Makes me a little bit nervous. If I was testing this, I'd be thinking, how do I know that this only happens under Edge?

**[01:21:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4866s)**

What happens if these meta tags come through in a different browser and they they break the rendering or something. So, that would be something that I would be probably testing for. I'd probably try and automate that, putting through different headers from different browsers, making sure this came through. But that would be a risk that might be important enough to check, might not. But that was interesting and I learned something. I didn't realize that. Let me close this down. Oh, the other thing that I was going to show in Edge, what I find really interesting is Edge is there's only two options.

**[01:21:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4898s)**

I can inspect element, which we're not covering at this point, and I can view source. And then in the view source, the find if I find HTML comments, this is pretty much like the way Chrome does it. It shows you in the in the bar here, I can click on these and jump through. I like that from the find, right? So I can view all the comments that it's it's identified and I can scroll through and I can see them highlighted.

**[01:22:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4925s)**

So Edge and Chrome I like the find. Now back to Firefox or on to Firefox. Firefox probably has the best page view for quick testing in terms of highlighting errors. This is my This is my code. I've made a mistake here. I've started an H3 tag and I've added an H2 tag. What an idiot. But that's me and I found these errors in here.

**[01:22:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4953s)**

Now, what I also realized is what what's this? I've there's no doctype. I've just started the document with HTML. I've created a slightly invalid HTML page here. What's interesting is the errors are shown in red, but so are these. These aren't errors. It's just highlighting to me that the HTML entities are sitting here and makes them easier to view. What else have we got in here? Again, another doctype. It's in almost standards mode. Okay, so I have a little bit of learning to do.

**[01:23:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=4985s)**

I'm not the best HTML developer in the world as we can see here. So, but this is highlighting it to me fairly fast. It's quite interesting. I can see I didn't put in a space between these attributes. Now, none of these things are major, but they lead to potential cross browser compatibility risks. Certainly on older browsers, they might not handle this. And some versions of newer browsers might just bark on this. They might just have a little bit of code that says, "I don't know how to handle this." And they render incorrectly just for that incremental version of that browser.

**[01:23:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5020s)**

We want our HTML to be as good as we can. Now you could feed all your HTML through linters and things like that, but just checking in the page source is a useful thing to do. Another page. So this is on the one of the teaching hosts. And this was interesting because this is a this is the same page that we looked at in Edge, but it's different HTML. And I'm getting different warnings here. And I can see that it's telling me that the head isn't closed.

**[01:24:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5045s)**

That's odd. It starts up here and ends there. What I see that's interesting here is we have a closing link tag which is showing an error. Now, this might be showing an error because link tags really don't need a closing link tag. So, it may be that the browser has determined this doesn't need one. So, it would normally accept a slash in here. So, it's not expecting to see a closing link tag. Maybe that's what's going on here because you can see the other link tags don't have an end.

**[01:24:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5073s)**

Maybe the head is complaining about that. Maybe the head is complaining that this meta tag doesn't have an end token in the same way all the others do and it doesn't have a closing tag. Who knows? But again, these are potential risks. If it's the meta tag that's complaining about potentially these script, the JavaScript files may not be executed. They might be associated as content within the meta tag and then not execute as JavaScript, which might mean that the tracking on this website doesn't work cross browser.

**[01:25:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5104s)**

It's a risk. We don't know the impact. We don't know the impact on future browsers. We don't know the impact on all the browsers. The easiest way to mitigate this risk is to fix it to make sure it passes any syntax checks. There I scrolling through here. I can see some errors. We've got a comma in here that we don't need. So, the attributes aren't split up properly. And here we've got a div footer mismatch.

**[01:25:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5128s)**

Now, that's relatively it's not that easy to see. It'd be nice if the source code let me close it, but that's what the DOM view lets me do. But it looks like it's right. If I scroll up here, that looks like it's lined up there. Then this, or is this lined up here, and then we've got this one coming through, and this one up the top, and then this one at the bottom. It looks like there might be nothing for this div tag.

**[01:25:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5154s)**

So, it looks like it's picked up that we've got a floating div tag, an extra one here. That's a potential problem that might cause rendering issues. And what's this one? Where's this one? So, we might have potential rendering issues in here. That's really what this is showing us. So, I find this to be an interesting exercise. I'm still going through other pages. I found more stuff than this on other sites. This is a great way to learn HTML. It's a great way to improve your HTML.

**[01:26:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5184s)**

This is how we started learning HTML in the olden days. We'd go to a site we liked. We'd view the source. We'd copy and paste their HTML and ours because we didn't have CSS to worry about at that point. It was all just stylus. But now, if you do care about the CSS as well, then use the inspect element. You can see how the CSS works. But get in the habit of using the view source. It's a very powerful and underused tool.

---

[Previous: Modern Browsers](../04-modern-browsers/readme.md) · [Course overview](../../readme.md) · [Next: Incognito Mode](../06-incognito-mode/readme.md)
