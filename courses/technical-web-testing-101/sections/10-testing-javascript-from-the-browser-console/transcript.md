# Testing JavaScript from the Browser Console — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [03:23:38–04:58:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12218s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [03:23:38 — Testing JavaScript from the Browser Dev Tools Console](#chapter-01)

- [03:25:26 — The Evil Tester Sloganizer Application Overview](#chapter-02)

- [03:29:49 — Exercise: The Evil Tester Sloganizer Application Overview](#chapter-03)

- [03:31:05 — JavaScript Functions and Objects](#chapter-04)

- [03:35:45 — Exercise: JavaScript Functions and Objects](#chapter-05)

- [03:37:27 — JavaScript Loops and Console Output](#chapter-06)

- [03:48:31 — Example of Interacting with Evil Tester Sloganizer](#chapter-07)

- [03:51:23 — Exercise: Interact with Evil Tester Sloganizer](#chapter-08)

- [03:53:06 — Answers: Interact with Evil Tester Sloganizer](#chapter-09)

- [03:59:23 — TodoMVC JavaScript Application Overview](#chapter-10)

- [04:06:32 — TodoMVC Application CRUD](#chapter-11)

- [04:15:12 — TodoMVC Application Exercises + answers](#chapter-12)

- [04:31:45 — TodoMVC Application Summary](#chapter-13)

- [04:35:09 — Advanced Technique - setInterval and clearInterval](#chapter-14)

- [04:40:27 — Overview of Chrome Source Snippets](#chapter-15)

- [04:42:45 — Source of Other People's Snippets](#chapter-16)

- [04:45:32 — How to import and export Chrome Snippets](#chapter-17)

- [04:52:12 — Essential JavaScript References](#chapter-18)

- [04:54:29 — Overview of blogs and YouTube video to watch](#chapter-19)

- [04:55:59 — Fun Free Coding Game to Practice JavaScript on](#chapter-20)

<a id="chapter-01"></a>

## 03:23:38 — Testing JavaScript from the Browser Dev Tools Console

**[03:23:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12236s)**

Okay, this is such a fun section. We are going to learn how to use JavaScript console to automate and manipulate the application we're testing. Right? You gain so much power when you can write a few lines of code in the console and make a massive impact on your application. As you do so, you're going to learn how your application works. And I hope you never underestimate how important it is to know the technology behind your application and know it better and better so you can work at much lower level.

**[03:24:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12269s)**

Right? We're going to learn simple JavaScript. We're going to learn how to use the Chrome developer consoles. We're going to learn how to automate a lot with a little. We're going to learn how to understand your JavaScript application. We essentially were going to open up an entire new world of opportunities for you with your testing. And what you're seeing on screen now is not the normal functionality of the application. I've automated this. It doesn't normally generate a slogan every 10 seconds.

**[03:25:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12300s)**

I've automated this in the dev console using the techniques that you're going to find in this section. Right? You're going to be able to do things that the application can't do. And probably should never be able to do possibly. But we have to learn how to control this so that we don't impact the application in a bad way. But we can give ourselves more opportunities when we test by learning what we do in this section. This would be so much fun. I hope you enjoy it.

<a id="chapter-02"></a>

## 03:25:26 — The Evil Tester Sloganizer Application Overview

**[03:25:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12344s)**

So this is an application called the Evil Tester Sloganizer and we're going to use this in order to learn how to manipulate and interact with JavaScript applications without using the GUI. We're going to use the dev tools and the consoles to work with JavaScript apps. And this is a JavaScript app. It's pretty simple. We have a button. We click it, it randomly generates a new slogan and it does all this through JavaScript.

**[03:26:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12375s)**

So how does it work? Well, let's have a look at this button because in terms of the GUI, this is the most important part. So let's inspect this. I'm just going to dock the console at the side here. So what we basically have is we have a button and we can see here there's an on click event which triggers the change slogan JavaScript function.

**[03:26:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12400s)**

Now that's pretty simple. This is a pretty simple app. Sometimes when you look at web elements it's not going to be obvious what JavaScript it executes. So very often we have to with more complicated apps go over here and look at the event listeners and see which event listeners have code. Sometimes it's not going to be on the element we think it is. So we might have to jump up the HTML until we get to the point where the event listener is.

**[03:27:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12431s)**

But in this case it's actually on this event and it's actually in this code. Now in the event listeners part you can see that we've got a link and if we click this we will see the code in the sources view. Now I've just clicked on that and we haven't seen it. Why is this? Well sometimes I find that we have to refresh the URL in order for the parts in here to work. This is quite annoying when we're using the console, but sometimes that happens.

**[03:27:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12460s)**

The JavaScript console you can see down here. The JavaScript console has a tab of its own, but it's also available in any other tab. And the way we gain access to it in any other tab is by hitting the escape button. That'll make it appear and go away in any of these tabs. And it's very handy to be able to work with JavaScript anywhere here. So this code basically says run the changeSlogan function. What is the changeSlogan function? Well, we don't know yet.

**[03:28:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12497s)**

We haven't looked at it, but it's JavaScript. So I can come down to the JavaScript console and I can type change slogan. You can see that we've got the autocompletion here. So it's highlighted change slogan. I can hit tab. I just put in the brackets here that say call the function and it will call it and it changed the slogan. If I miss out the brackets, the console says that's a function. I already know it's a function. I want to execute it.

**[03:28:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12530s)**

So, I put the brackets in. Now, when I use the up and down keys in the console, it's going back through the history of commands I've typed. You saw when we did the autocompletion, we've got the command that it's matched in the DOM. This is the one that it knows about. And these ones are ones that we have used. So these are ones that might have inaccurate values if we've been experimenting. This is the one that it knows about with the console.

**[03:29:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12557s)**

We can clear it like that. And we can clear the console history. And now it's only going to show us the stuff that we can autocomplete. So all of that is basically saying I can execute the Evil Tester Sloganizer just by implementing the JavaScript. What I'm finding interesting here is that the button has disappeared. Not sure why that happened. I wasn't paying enough attention. Maybe I deleted something. But essentially we can interact with JavaScript applications from the console. This is very useful. This opens up an entire new approach when we want to automate applications.

<a id="chapter-03"></a>

## 03:29:49 — Exercise: The Evil Tester Sloganizer Application Overview

**[03:30:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12607s)**

So, as an exercise, I just want you to head off to this application eviltester.com/apps/sloganizer/version1/sloganizer.html. Because this is a live app, Sloganizer might change over time, but this version one link will always point to this version one. With this code that you're seeing in this video, I want you to inspect the button so they get used to using the inspect. Have a look at the event listers, explore, have a look at the source itself, and just see what you can make of this.

**[03:30:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12645s)**

And also try using the console to trigger the changeSlogan function. And after you've done all that, come back, we'll learn some more stuff.

<a id="chapter-04"></a>

## 03:31:05 — JavaScript Functions and Objects

**[03:31:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12683s)**

And the plan here is not to teach you an awful lot of JavaScript. The plan here is to help you get familiar with JavaScript, to understand how you can interact with it from the console, and to know just enough JavaScript to be dangerous. So that's what we're going to work on now. We're going to look at the source.

**[03:31:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12701s)**

Now this is the source code for the page. It's all pretty simple. Then at the bottom here in the script tag, you can see the actual JavaScript source code. Now this might look complicated, but it isn't really. It's actually pretty simple when we understand it. Basically, what we have here are some objects. Here's one of the objects, phrases. Here's another object, sentences. And we've got a bunch of functions. So objects are things that we act on, data, stuff that's stored, stuff that functions use to make stuff happen.

**[03:32:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12744s)**

So we call functions to make things happen. When we click on the I want a slogan button, it calls the change slogan function which generates a random sentence, then makes some changes in the page and that's it. Stuff happens when we call JavaScript functions. So let's have a quick look at objects first. We've got two main objects in this. We've got phrases and sentences. You can see here phrases is an object which has all these name value properties. So we've got a property called start which has a value which is an array.

**[03:33:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12791s)**

Now these things will make sense in a couple of minutes. And sentences is an array and it's an array of strings. And these strings are templates that the functions process in order to randomly generate things. So let's have a look at the console and see what the console tells us about these things. So if I type in phrases, you can see it was autocompleting there. Phrases is one of the objects that we saw in the source. Phrases is an object that we can access in the console.

**[03:33:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12826s)**

This is interactive. I can open this up. I can see all the names and the name value property pairs listed in here. I can expand these and I'll see the array with the values in it. So this is the I am value. There's I am. It's an array. It's an array with two items. Two items. First one is I'm which is a string. And the second one is I am, which is I am. And you can see that arrays in JavaScript are zero indexed.

**[03:34:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12862s)**

So zero is the first item in the array. We'll look at how to access those in a little bit more detail later. So the functions are pretty simple. Functions start with function. That's how we know it's a function. Then we have the name of the function. And we can see that this function randomNumberUpTo takes a single argument. And then in the body of the function, it does some stuff with the math library and returns a value that it calculates. Because this is a function and it's at the highest level in the code, we can access it from the console.

**[03:35:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12901s)**

So I can type random and then it starts to autocomplete the functions it knows about. We've got randomNumberUpTo and random sentence. We want to choose randomNumberUpTo. I can click on this or just hit tab. And I want to call this, but remember it takes an argument. So I'm going to say randomNumberUpTo four. So it's generated zero. I'm going to call it again. And I'm bringing the code back by hitting the up arrow to go back through the history. It's randomly generated one.

**[03:35:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12937s)**

Randomly generated one. Random generated two. So I'm testing now this function called randomNumberUpTo by continuing to use it. So we can interact with and test the JavaScript at a lower level than the GUI.

<a id="chapter-05"></a>

## 03:35:45 — Exercise: JavaScript Functions and Objects

**[03:36:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12963s)**

So, what I want you to do now is look at the source for the Sloganizer and see how much of it you understand. Just scan through this, have a look, see what makes sense, see what doesn't. If you want, you can start doing Google searches to investigate this.

**[03:36:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12976s)**

Remember, this is an object, this is an array, this is a function. Look those things up in JavaScript. See what you learn. You can type the names of the objects into the console. Just start exploring. Do the things we're doing here. Type the objects in. Use the autocomplete. See what it tells you.

**[03:36:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12997s)**

Now remember, when it's an object, we don't need the brackets. When it's a function, we need the brackets. Have a look through the code and run some of the functions. See if you can figure out what arguments to pass in to these functions to make them run. Some of these are very simple functions. Some of them are a bit more complicated and use other functions in the codebase. So, you might want to start with the more primitive functions and see how they work.

**[03:37:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13021s)**

Make sure you use the autocomplete. Make sure you use the history to reuse functions that you've already typed in. And just generally have a play with the code. Have a play with some of the functions and get used to exploring and using the console. Remember, if you want to, you can do all this in the console tab directly, but since you're working with the source, you probably want to be in the source tabs and have the console open at the bottom of the source.

**[03:37:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13046s)**

And remember pressing escape will show and hide the console.

<a id="chapter-06"></a>

## 03:37:27 — JavaScript Loops and Console Output

**[03:37:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13065s)**

So we use the console to interact with the application. That basically means we can call functions and we can change variables. Now, the hardest part about interacting with the application is knowing which functions to call. We have it fairly easy in this app. It's all pretty obvious. Every function that you see listed because it's at the top of the source. It's basically just attached to the window. We can just call it. We have utility functions like randomNumberUpTo and getRandomValueFromArray. These just work with normal JavaScript objects.

**[03:38:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13098s)**

They don't really they could be in any app essentially. They're just utility apps. Then we have application functions like getSentence, expand_text. This is kind of the core of the entire application. We've got utility function, capitalizeFirstLetter, remove spaces. We've got process_sentence. This is an application function. Any of the application functions are entry points into the application and help us work with what we would consider testing. The utility functions are things we might want to test to make sure that there's nothing important going wrong in the background.

**[03:38:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13138s)**

The utility functions are harder to test in the application. The application functions are the ones that act as input points that help us essentially bypass the GUI. So let's take for an example the randomNumberUpTo. If I wanted to make sure that the randomNumberUpTo function actually worked, I can call it from the console. You've seen this already. Random number up to 10. So, it's any number from 0 to 9. And I can keep going. Every time I run this, it's random. But I don't want to have to keep hitting up all the time.

**[03:39:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13177s)**

I want to use the console for more important stuff than that. So, we're going to learn a little bit of JavaScript to help us do that. And two really important functions or JavaScript concepts that you're going to use a lot are for loops and console.log. Console.log lets us write things to the console. So, I've just written console.log hello world and it's printed hello world at the console. And the reason we've got undefined here is that the console.log function when we called it didn't return a value so it just said undefined.

**[03:40:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13214s)**

Now I can do console.log and print variables or objects. So the console.log has printed the object. So it's essentially the same as typing phrases. Hello world is a string essentially the same as typing it from console.log. A for loop allows us to run some code multiple times. So if I run this, this basically says for create a variable called x set it to one whilst x is less than 100 then do console.log hello then increment x and the console.log statement basically says print out hello followed by the variable x.

**[03:41:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13264s)**

So if I run this, I should see hello 1, hello 2, hello 3, hello 4, etc. coming through down here. All these things have been printed out by that single statement. Now, when you're typing these statements in, it's worth being aware that if you try and enter this at the console like this, start typing it in one line at a time, you will get a syntax error because JavaScript is trying to process this as it comes through. So you have to either type it in essentially one long line like this or type it into an editor and paste in.

**[03:41:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13308s)**

There's some tools I like to use when I'm doing this. I mean I'll use a text editor. I'll type in the JavaScript there. Some things you might want to consider using JS Beautifier which allows us to type code in. Then if I hit beautify, it will format it nicely for me. JS Compress. So I might take the pretty output here which is very readable and I work with and I stick in my notebook and I track when I'm writing my code.

**[03:42:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13336s)**

I put in JS compress and then I've got something that I can easily paste into the console. And you can see that JS Compress actually removed the braces because they're not required in this case. What you'll find is that if you learn a little bit of JavaScript and you pay attention to what the tools do for you and tell you, you will learn a little bit more about the formatting that JavaScript uses. Because sometimes you'll see me use semicolons when I'm typing it into the console.

**[03:42:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13366s)**

Sometimes I won't. Essentially, if it's a single statement like this, I don't need a semicolon at the end. I can add a semicolon and it won't make much difference. I tend to add semicolons a lot, but you can see here in my code I haven't added a semicolon in here. Normally I would. So that I that's a mistake that I've added, but JavaScript doesn't really care and doesn't really mind. So when you see semicolon, sometimes semicolon's not. Sometimes they're important, sometimes they're not.

**[03:43:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13396s)**

You JavaScript will tell you when they are important. So instead of just writing console.log, log. I could actually call the function that we want to test. So I could say randomNumberUpTo let's say I say three in here. And this will call the randomNumberUpTo three 99 times. Oh, so it did, but we've only got one output. So, it's only returned the last thing that we called. And that's because what we really want to do is stick in a console.log and each time we go through the loop log out the result of calling the randomNumberUpTo three function, which it has done.

**[03:44:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13448s)**

Now, you see all these three two things at the side. That's basically saying the number two was written to the console twice, but I'm only going to show you it once to not clutter up the console. This is handy when JavaScript starts kicking out errors and you'll see a single error here with the number increasing as the error report comes through rather than your console just getting swamped with errors. So this is a feature, not a bug, not a problem.

**[03:44:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13477s)**

So let's have a look at some of these objects. So the sentences object is an array. If I do type of sentences, then it's just going to come back with object. But I know it's an array because it's got the square brackets. And because it's an array, arrays in JavaScript have specific ways of interacting with them. So I can access the first sentence in this array by saying sentences indexed at zero. I could get the next one sentences indexed at one.

**[03:45:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13514s)**

I could get the length of sentences by saying sentences.length. Now you see that sentences is a JavaScript object. So it has a whole bunch of functions associated with it. You can look those up in the JavaScript references to see what they do. You will probably use some of them. The more that you get into automating and coding from the console, the more you get into coding JavaScript, the more you use this. But for our purposes, to start with, all we really probably need to know is how to index an array, how to access things in the array.

**[03:45:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13549s)**

Now, if I try and access something outside the array, it's given me undefined. That's because there's nothing in the array at that point. Because sentences has a maximum length of 21 because their array indexed at zero. The last one in the array is actually 20 or sentences.length minus one. There we go. Now, because this is an object, I can actually amend it.

**[03:46:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13579s)**

So, let's see. Sentences zero is currently this sentence. I could say sentences 0 equals Bob. There we go. Bob. So now if I see what sentences zero actually contains. So I've changed the data that's in the running application. This is when we start manipulating the application. We can change the data that's in there. I can change the values in the array. I can change the values that are in object properties. I can change things and then when I start using functions, they will use the values that we've put in these objects.

**[03:46:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13617s)**

So we have another object in here called phrases. It's an object. It's a bunch of properties. Each of those properties contains an array. So I could say, let's get phrases up in the code so you can see this. Start is the first one here. So I can say just like an array we can access the values that are in there. I can do this through the names of the name value pairs. So I can say phrases.start and that will give me the array that's associated with star.

**[03:47:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13652s)**

I can also use a dot notation. So I can say phrases.start and we get the same thing. And if I wanted I could change that. I could change the array that's in there for the start. But now you know how to access objects that are in an array, access fields, access the named properties in objects. Some objects will have functions. You access them in the same way. If there was a start function, I would access it like this. We haven't got a start function.

**[03:48:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13683s)**

This would cause an error. But if there was a function in the object, that would be able to call it. In fact, any functions that are in objects, you can see it here. This is the phrases object under proto proto. This is the prototype. So there's actually a get on the object. I could use that if I wanted if I knew what that did. So next we're going to take all that knowledge and actually use it to interact with the Sloganizer.

**[03:48:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13710s)**

So if you want to feel free to play around with the arrays, the array indexing, the phrases, but we're going to do all that in context in just a minute.

<a id="chapter-07"></a>

## 03:48:31 — Example of Interacting with Evil Tester Sloganizer

**[03:48:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13730s)**

We now have enough JavaScript knowledge to be dangerous when we interact with this Sloganizer. So if we have a look here at the code for random_sentence, we can see that this is a small function. It creates a variable. That's what the var is. V sentence means create a variable called sentence which is going to store the result of calling the getSentence function and the getSentence function basically selects a random_sentence from the sentences array. Then we're going to call the process_sentence function which you can see above with the sentence that we just randomly generated and we're going to return that value.

**[03:49:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13771s)**

We could do that independently. We could do that from the console. So instead of calling getSentence to generate a random_sentence, we could choose one of the sentences from the array and call process_sentence directly. Or we could even make up our own sentence and call process_sentence. So if I do process_sentence and use autocomplete to our advantage, I'm going to say from the sentences array.

**[03:49:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13797s)**

Now if I did this, if I didn't close my statement sentences zero, I have a tendency when I'm writing code to automatically close the brackets as I go through so that I don't have any syntax errors at the end, but then I lose the ability to do autocomplete. I'm used to working in an IDE rather than the console. So code I've just written process_sentence call process_sentence function with the first item in the sentences array which is Bob because we changed that in one of the previous videos.

**[03:50:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13831s)**

Remember we said sentences equals Bob. Now if you do this if you discover that your interaction you've changed the app all you have to do is reload the app. That stuff that I put in the console is still there. So now process_sentence sentences zero is running the process_sentence function with the template that is in sentences zero. So it's basically instantiated this with the random values. This allows us to start focusing in on particular sentence templates. If I do just changeSlogan, it's going to use any of the sentences.

**[03:51:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13877s)**

And I don't know if there's a bug in one of the sentences or not, but I can specifically test one of the templates by using process_sentence on each of the sentence templates.

<a id="chapter-08"></a>

## 03:51:23 — Exercise: Interact with Evil Tester Sloganizer

**[03:51:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13902s)**

So, as an exercise for you, build on this. Use a for loop to generate 100 variations of sentence zero by calling process_sentence from within a for loop. Do what we just saw here. Amend the value of sentence zero to be Bob and try running that through your for loop. refresh the page to make sure you get rid of your changes. Call the removeSpacesAtStart function with a string. Make sure it works to your satisfaction. Call the removeSpacesBeforePunctuation function with a sentence.

**[03:52:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=13941s)**

Now, you'll have to create a sentence that has punctuation and spaces in it and make sure it works. Just experiment with the functions that are in here. And to really make sure that this application works, call random_sentence from within a loop and generate 1,000 random sentences. Let's see how you do.

<a id="chapter-09"></a>

## 03:53:06 — Answers: Interact with Evil Tester Sloganizer

**[03:53:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14005s)**

Since this is one of the later exercises, we're going to show you the answers for this. So, I'm just going to clear this out here. And I'm going to clear out my history. So, now it's it's clean. So, how do we use a for loop to generate 100 variations of sentence zero? Well, what I want to do is process_sentence for sentences zero. And what I tend to do is I tend to do each of the parts of the statement individually to make sure they work.

**[03:53:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14039s)**

So, that generated a sentence. So, now that I know that that works, I'm going to wrap it in a loop. So for var x where x is less than 100, let's set var x to be zero. Then increment x. So create a variable started at zero. Whilst X is less than 100, call the process_sentence on the first sentence template, then increment X. So this should give me 100 sentences. Oh, it doesn't because we didn't console.log it. There we go. So now I've created 100 variations of that sentence, which is a useful thing for me to test.

**[03:55:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14101s)**

I haven't unit tested this application. So the only way that I'm really going to test this is by creating lots of variations and hope that it doesn't actually break. So sentence zero equals Bob. Then run the sentence, run the loop again. And we've got 100 instances of Bob which has been capitalized because that's part of the process_sentence code. Process sentence up here says expand the text, generate the random stuff, remove spaces, remove spaces, remove spaces, then capitalize the first letter, then return it.

**[03:55:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14144s)**

So let's have a look at this. Remove spaces at start. So hopefully you pass in a string. I'm going to pass in hello. And it's removed the spaces at the start. Let's try it with more spaces. Hello. And less spaces. Hello. So let's removeSpacesBeforePunctuation. So hello dot this works question mark. Let's see what it might work if we don't call remove spaces start and we instead call removeSpacesBeforePunctuation.

**[03:56:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14202s)**

Now I'm just going to harness the power of autocomplete by copy and pasting. Hello. This works before punctuation. Now I can see in here that only a very small subset of punctuation is handled. Full stops, commas, exclamation mark, and question marks. So that's all I'm going to put in the test. If I do remove spaces, this works. I'll call that punctuation mark. There's no Why does that work? So, it didn't actually work. It's just cut down some spaces. Didn't expect that to do anything.

**[03:57:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14252s)**

Might be a bug there. Who knows? Let's try a different set of punctuation or symbols. Cool. So, I suspect that something's trimming out some spaces that I wasn't expecting. So, there might be a bug in there, but it's a useful bug, so I don't mind. Now, I've already got hopefully a for loop in my buffer. There we go. So one of the actions here is to create a for loop of a thousand and then generate with random_sentence. So if I say this is the problem with editing in the console if you hit up and down it will go away.

**[03:58:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14301s)**

That's one of the reasons why I tend to do most of this in an editor and copy paste in. So let's see there we go. So this is random_sentence is pretty much at the top level of this change slogan calls random_sentence then amends the DOM random_sentence then is the first high-level function which does the same as the application but works under the GUI. So I have essentially called this a thousand times.

**[03:58:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14334s)**

Now, we can see quite usefully that Bob is still in there as a sentence. So, I haven't actually tested the app. So, let me refresh that to get rid of Bob. And then we should see no Bob's in there, which hopefully means no repeated sentences because it's supposed to be random. And the whole aim is when someone clicks a button, they see a different random_sentence. So, that's okay. I'm not going to read through all those, but if I was testing this, I probably would have to just to make sure it's good enough. So hopefully that's similar to how you did the exercises.

<a id="chapter-10"></a>

## 03:59:23 — TodoMVC JavaScript Application Overview

**[03:59:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14382s)**

So we're going to look at a slightly more complicated application now. Now in theory, this isn't a complicated application. What makes it complicated is that we're using a JavaScript framework and that makes the code harder to understand. So the JavaScript framework is Backbone. I don't really know Backbone. If I was testing this as a proper application, I would go off to Backbone. I would understand the documentation. I would speak to the development team that we're working with to understand how this application works.

**[04:00:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14414s)**

But I'm not working on a project. I've picked an example application. This is from the TodoMVC site. TodoMVC is a very simple application which is implemented in a lot of different frameworks, a lot of different JavaScript frameworks so that people can see how easy it is to use the framework. What I like to use it for is to see how hard it is to test these different frameworks. So what we're looking at here is the TodoMVC application written in Backbone. TodoMVC application is very simple.

**[04:00:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14444s)**

What we can do is we can create an app create a to-do. I can delete to-dos. I can toggle to-dos as completed or not. I can filter them and I can delete those that I have completed. So it's a very simple application. Everything is stored in local storage. So if I go away, come back, everything will be here. I can also amend them.

**[04:01:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14473s)**

Let's say so to do one do two. So what we're going to do is we're going to look at this application and figure out how could we use the console to support us if we were testing this. So we've used the app. We understand its basic functionality. The next thing we're going to do is look at the code because I don't know this application. And I don't understand it. So, we're going to look at the code just by getting the development tools up.

**[04:01:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14507s)**

F12 or right-click do inspect to get the information up. And what I'm interested in are the sources. This is a JavaScript app. It's using a whole bunch of node modules which are common to a whole bunch of different applications. So, I'm not really concerned about this. I think the application code is going to be in here in the JavaScript part of the Backbone examples.

**[04:02:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14532s)**

Now, it's an MVC application. So, I can see we've got views. These are essentially what is displayed on the screen. We've got models. These are essentially the domain objects. So, I can see there's a to-do object. That's quite important. We've got collections of stuff. Now, these are usually filled with instantiated model objects, which is quite useful to understand. And we've got the router which probably controls what we click on, what happens where.

**[04:02:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14557s)**

Now, because it's a Backbone application, it's a little bit harder to understand. If I look at the to-do in here and look at the event listeners, we can see there are no event listeners on here. Remember previously, if I go up the chain, I can see that the event listeners are a little bit higher up. So, I've got a click event listener on the to-do there or on the on the list. But sometimes it might be a little bit understand hard to understand what is triggered from where.

**[04:03:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14587s)**

There's certainly no onvent do X here. So, this is all added after the fact. So, I start by using the application to see where its features are and looking in the code to see if there's any clues for what's going on. Now, just picking one of these files at random, which is the todo.js which is in the models. So this is what a to-do is represented by and it's a function which is essentially a class in JavaScript and I can see that there's a global variable called app that might give me some good insights into this application.

**[04:03:43](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14623s)**

So at the console I'm going to type app and I can see that there's an object instantiated and it's got a thing called to-dos. And to-dos is an object with the actual to-dos in it. The two to-dos that I created are in here. So I think this to-dos is the collection. Yep. app.todos is this to-dos collection. And we've got the global app. So that's good. We've learned a little bit about the application and we know that we can access it.

**[04:04:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14657s)**

Now, if you're looking through application code trying to figure out how it works, one of the things to look for are where new is used, the keyword new instantiates a new instance of this class or in JavaScript this function which is a set of properties which essentially represents a class with methods and fields. So, this app.todos is instantiated with something. So this to-dos would have these methods on it. So presumably todos has a completed function on it. We can see completed here.

**[04:04:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14695s)**

We know that to-dos is an instantiation of this function. So I should be able to type app.todos.completed() and it's a function and it's an empty array because none of these are completed. If I complete one manually, then type this again, we can see that there's one child in there. So, we're starting to understand how this application works. And as you get used to this, you will start to understand how JavaScript applications fit together, how we instantiate new functions or objects and store them into variables so that we can access them later.

**[04:05:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14731s)**

But for our purpose here, app is a useful start point. To-dos is the collection. So we'll be accessing that quite a lot when we want to create new to-dos, delete them, things like that. So if I was testing this application, I would want to know how to create to-dos, how to select them on the GUI to toggle them between completed and not completed, to delete them, and how to amend them. That would be my basic things. How can I create them, read them, access them, delete them, and amend them.

**[04:06:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14762s)**

If I can do that, then I can create a lot of data. It'd be nice. I can test this app and I can create a couple of to-dos, but I'm never going to sit here and create a thousand to-dos and see how the application handles it. I'm never going to sit here and click through and complete 75 to-dos to see if clear completed will work with that many. I'm never going to do those kind of test functions at the GUI because it's going to take too long or if I do do it, it's going to take take me a day just to do a single task.

<a id="chapter-11"></a>

## 04:06:32 — TodoMVC Application CRUD

**[04:06:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14793s)**

I want to be more efficient. So, I want to use the console to help me. And that's what we're going to learn how to do in the next couple of videos. So, knowing the high-level objects means that we can start working with this. We are now going to try and figure out how to create new to-dos. How to select them on the GUI so that we switch them from completed to not completed. Going to figure out how to delete them and to figure out how to amend them.

**[04:07:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14829s)**

That will give us the basic building blocks to support our testing. So, I don't really know how a new to-do is created. So if I just right-click on the files here and do a search for create, let's see what we get. So there's a good there's a match here in app view. Let's have a look at this. This is basically saying so on the GUI if we create if we hit the enter key in here which is saying this if we hit the enter key then we're going to do app todos.create create and pass in a set of new attributes.

**[04:07:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14869s)**

So if I want to create a new to-do, I have to call this this I don't know. So this new attributes is here. And this is basically saying the new attributes function will return a essentially an object or a properties set which has a title, an order and completed is set to false. So I could do that from the command line. I can type app.todos.create and I can create the object with a title. Whoops. Let me call it to-do 3. And I can use the app.todos next order.

**[04:08:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14917s)**

Just put that in here. And I can set completed to false. Essentially what I'm doing is I'm just reusing the code that's in the application to help me test it because I want when I'm doing this at the console I want to replicate as much as possible what the GUI is doing. This is what we've seen from the code. So hopefully if I do this we get a syntax error and that's because I missed out the order property name. There we go.

**[04:09:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14947s)**

We created a new to-do. So, I would now copy this, paste it into my notes so that I knew how to create a to-do whenever I wanted to at the console. Now, clearly, it's a lot easier for me if I just want to create a single to-do up here. But, if I want to create a thousand of them, all I have to do is wrap this in a for loop, and then I should be able to create a thousand to-dos. And guess what?

**[04:09:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=14971s)**

That's going to be one of the exercises. So if I want to make it completed, click on this. I think because that's happening on a single to-do, it's probably going to be contained in this model. Let's have a look at model here. So model I can see has a toggle function that sets it to completed. And this toggle function is on the to-do class. We already have access to the to-dos.

**[04:10:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15001s)**

So let's have a look. So if I do app.todos and that's in the models, models is an array. So if I say models zero let's see which one that is undefined. If I do get, so we can see that this models is the to-do one. And you've just seen a new function here, the get function. We saw that earlier on one of the prototype methods. And that basically lets me get the property with that name. So we've done that here to get the name of the to-do.

**[04:10:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15051s)**

So I know which one I'm expecting to see toggled when I call this toggle function. And that's right. That's what we expected. So if I do that again, then it goes back. So I can switch between completed and not completed by calling this toggle function. Now, if I had managed to create a thousand to-dos from the console and then I created another loop to set half of them to completed, then testing this clear completed function would have a little bit more weight to it.

**[04:11:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15085s)**

So, I can use the console to set data up and put it into the right state to make my testing more meaningful. So, how do we delete them? That's what we want to figure out. Now, now I remember in the app view there was a clear completed function. Now, this JavaScript here is a little bit strange. We haven't seen this before, but I think what this basically saying is for the array that is returned when we call the completed function on each of the items in that array, call the destroy method.

**[04:12:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15123s)**

And that would suggest that each one of these to-dos has a destroy method. Great. So, we've deleted that first item using the destroy method. The destroy method isn't obvious here, but it must be coming probably from this Backbone model function. I don't know. Doesn't really matter to us. What we're doing is we're trying because I don't know Backbone so I don't really know how this hangs together but what I'm doing is I'm looking at the JavaScript that I've got access to and seeing how I can use the information here to support what I have to do.

**[04:12:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15164s)**

So I can now destroy them. I can create a to-do. I can toggle them from completed to not completed and I can delete them. Now essentially when I'm doing that destroy I'm simulating clicking this button. The next thing I have to figure out how to do is amend them. So how do we amend them? So the clue for this is here. So in the to-do which is the model level or domain level, the toggle command is actually saving with a new set of properties.

**[04:13:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15199s)**

So I suspect if I do save with a new title, which is the name that we're putting in, then I think this will work. So if I do app.todos then save. So then I want to put the object in here. So I will just put title. I'll give it a completely new title. I'll call it Bob because that's what we do. And there it is. So I've amended that to do to be to have a new title. And if I want to amend the title, what I'm going to have to do is instead of putting in a string literal, I'm going to use the existing one.

**[04:14:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15244s)**

So I'll say app.todos.models[0]. Get the first one. Dot get title. You saw me do this earlier on. So I'm getting the title, the current title for the to-do. And then I'm going to add concatenate onto it a string. I'll just add X. So this is going to be should end up as being Bob X. There we go. So now we know how to amend the titles of to-dos. We know how to give it an entirely new title if we want to completely amend it or to change the title to add new things on the back.

**[04:14:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15289s)**

So that's pretty good. We know how to amend the to-dos. We know how to delete a to-do. We know how to toggle it from completed and not completed. We know how to read the properties of the to-do. And we know how to create a to-do. So, we've got the CRUD workflow, the create, read, update, delete workflow sorted. The only thing we have to do now is start wrapping it in loops to create loads of those. And that's what you're going to do in the exercises.

<a id="chapter-12"></a>

## 04:15:12 — TodoMVC Application Exercises + answers

**[04:15:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15331s)**

So for the exercises, what I want you to do is use the information we've already had and start putting it into the practice that we would use when we're normally testing this. So, if I want to test this to-do app against 100 to-dos, I will need to wrap this to-do creation in a for loop.

**[04:15:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15349s)**

That's what I want you to do. I want you to create a 100 to-dos in the application. Then you can experiment with them and use the GUI to test and work with them. So, another thing I want you to do is create a whole bunch of to-dos, 100 to-dos, whatever, and toggle them all so that they're completed. And then use the GUI to clear completed so that you understand that you can do things in the console to support your testing then continue your testing in the GUI and use the console as a support tool.

**[04:16:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15382s)**

So create 100 or so to-dos then mark them all as completed toggle them then use the GUI functionality. Then what I want you to do is instead of toggling them all I just want you toggle half of them. So create 100 to-dos, then toggle half of them. Then what I want you to do is instead of toggling just a contiguous half, the first half, I want you to toggle every second one. So every second to-do would be marked as completed. Then I want you to move on to deleting them.

**[04:16:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15418s)**

So I want you to loop around the to-dos that are there and delete them all. Then what I want you to do is create another set and delete half of them. But not just any half. What I want you to do is complete half of them and then delete all the completed ones. So create a whole bunch, complete half of them, then delete the completed ones. Then you're simulating the clear completed for half of the items. Next, I want you to create 100 of them.

**[04:17:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15452s)**

Then amend their names so that they've all got to-do after the name or asterisk to-do asterisk after the name so that you can amend on mass a whole series of to-dos and if you can do that then you're pretty much set up to be testing this application properly. Now we may not have covered all the JavaScript you need in order to do this because we've only seen four loops. I suspect you might want to investigate while loops and do...while loops and you might want to have a look at how a for loop actually works.

**[04:18:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15488s)**

So find some documentation online that explains JavaScript loops and iterations, while loops and for loops because remember we're only giving you enough JavaScript to make you dangerous, but you have to do the research to learn how to use this. See how you got on with the exercises. I'll show you and explain the answers in the next lecture. Okay. So, I hope you did well on those exercises. I hope you did some investigation. I've thrown you in at the deep end because that's how things are going to work.

**[04:19:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15541s)**

But I'm going to explain the answers and show you how I did them so that you can check what you did against how I approached it. So we already know how to create items. So what I want to do is I just want to wrap this in a for loop. So the same for loop you've seen before. This will create or this will loop around 100 times.

**[04:19:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15569s)**

Now, I'm going to give each to-do a unique name. So, I'm going to concat a string on the back. Now, I could do this with just a normal plus sign. So, I could do Let's stick the loop index on. And the rest of it is fine. I want them to start as completed. And that should be good enough. Let me close the loop.

**[04:19:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15594s)**

Let's see. So, there we go. We've just created 100 to-dos in there with a simple for loop. So in JavaScript, we've got this concat command or I could have just used plus to concatenate strings. Let me go make this a little bit different. So hopefully at the bottom now there's another 100. There we go. With that minus sign in front. So that's just different ways of concatenating strings in JavaScript, but the principle is we're looping around a whole bunch of times, then issuing the create command.

**[04:20:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15635s)**

So hopefully that one was fairly simple because we've pretty much done that before. So now we're going to toggle them, which basically just means I need to loop around the array. So for x equals zero x is less than remember it's on app.todos.models and then it's an array. So we're going to use the length of that array. We're just iterating over an array in JavaScript. And what we're going to do is we're going to for that to-do we're going to toggle it.

**[04:21:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15674s)**

So, I'm just iterating over the to-dos models array. And for every item in that array, we're going to toggle it. There we go. Look at that. 200 to-dos toggled in a second. That would be an hour's work. If I was just doing this interactively with the mouse, so I'm going to untoggle them because the next exercise we had to do was to toggle half of them. To do this, you need a little bit extra JavaScript, but all we're going to do is work out the length of the array and then divide it by two.

**[04:21:53](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15713s)**

So, you had to hopefully look up a little bit of JavaScript arithmetic to work out how to divide numbers. And hopefully at the top of the screen now, there we go. Half of them have been marked as completed. So now rather than doing half of them, we're going to do every second one. So to toggle every second one, what I'm going to do is I'm going to add an if. I'm basically going to say if x modulus 2, so if it's an even number, then we'll toggle it.

**[04:22:32](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15752s)**

So you might want to look up the modulus function in JavaScript in arithmetic. And hopefully I haven't made a syntax error there. In fact, I know what I've done. I need to say x modulus 2 equals zero. JavaScript has strange equals when I'm not certain whether it's going to match or not. I use three equal signs because JavaScript has two for kind of vague equals and three for must match exactly. And I tend to use the must match exactly. Otherwise, you sometimes get errors creeping in.

**[04:23:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15786s)**

So, let's see. There we go. every second to do as chosen by the modulus function. So if that was set to modulus one, it would pick oh in fact the result the actual exercise was to do every second one. So I really should have done there we go every second one using the modulus function. So if you didn't figure out the modulus function, the other way of doing this is we could have created a variable. So I could have said create a variable called toggle this one and I'll make it a boolean.

**[04:23:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15828s)**

Then we're going to loop over the array. And then if we're supposed to toggle this one, then toggle it. And we make sure that that I so I want to say toggle this one equals not toggle this one. There we go. Syntax error. And there we go. This was within your knowledge scope I think before you started. But it's left a side effect. This toggle this one variable because we created at the top level has now is now part of the app.

**[04:24:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15873s)**

It's essentially part of the top level scope. So we have to be careful when we are automating in this way that we understand what variables we're creating or not creating and find ways around this. And I'm going to show you in a couple of minutes a way of avoiding this. But be aware that if we create variables in our commands then they're at the top level. They're essentially part of the application running scope. There's a danger doing this that we might overwrite application variables or application objects.

**[04:25:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15906s)**

So we have to be careful. So how do we delete them? Well, the first thought that we might have is that we're just going to iterate over the array and for every item in the array, we're going to destroy it. But that doesn't work. It destroyed some but not all of them. And the reason for that is the length of the array is changing all the time. So we didn't hit all of them.

**[04:25:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15938s)**

Now we could make this work by working backwards through the array. So hopefully you looked up for loops to see how they work. And essentially what we're basically saying is instead of starting at zero, I'll start at the last item in the array. And I will do this until or while x is greater than or equal to zero. And instead of incrementing x, I'm going to decrement x. So, it's going to start at 100, then it's going to delete the one at number 100, then it's going to delete the one at number 99.

**[04:26:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=15978s)**

And this should work. So, there we go. We just have to be aware that when we're deleting things and removing things from arrays that the size is going to change, therefore, the conditions in our loops are going to change. So, you are asked to delete the completed items. So, let me just create a whole bunch of them. Again, let's set some of them up to completed.

**[04:26:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16004s)**

Now, the good thing about doing this at the command line is again, because we've already automated this, I've just created 100 to-dos and I've just completed 50 of them. So, how are we going to delete the ones that are completed? Well, the first attempt might have been, let's put this in here so you can see it. We might have wanted to iterate over the completed array.

**[04:27:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16025s)**

Remember we saw the completed function returns an array. So in theory we could just iterate over that. Problem is that because this is done dynamically every time we call the completed function we get an entirely new array. And because we're deleting things from it the array is going to go down. And let's see what happens. So we deleted a couple but not them all because again it's dynamic in the background. So we need to sort that out. So we could do what we did before and store I could call this store that in a variable and then just iterate over that array and that would work but that would create the variable as a side effect.

**[04:27:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16074s)**

So let's learn how to do this without having a side effect. So here we go. This is calling the completed function to store the array of completed items in a variable. Now if I just ran this in the console, it would work. But we would be left with this completed items in the list array by wrapping it in a new function. This means that the variable is only in scope for this function. Because the function is not being stored anywhere, it will go away.

**[04:28:29](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16109s)**

Therefore, we're not leaving a side effect. We're essentially just going to do the stuff that's in here, but nothing that we create in here is going to be tracked. So, let me add this in here. So there's no completed items in the list. And that's because we grabbed the array first, stored it in a variable, then just iterated over that array for the length that it was there. And each of the items in the array, we just delete. Nice and simple.

**[04:29:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16144s)**

And because we've wrapped it in a new function, there are no side effects. doesn't exist because we created it in the scope of the function, not in the scope of the application. Now, the other way I could have done that is with a different type of loop. Let me complete some of them. So, instead of doing a for loop, I could have done a while loop. So, hopefully you investigated this. Basically, this says while the array that's returned from the completed function has a length that is greater than zero, then get that array again and delete the first item in that array.

**[04:29:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16175s)**

So even though the array is changing in size all the time, doesn't matter because we're going to continually get a new version of it back. This is overkill in terms of the memory and creating and deleting arrays all the time. But for our purposes, this doesn't really matter. So this should delete all the completed items. So do research the while loop. The other alternative to a for loop and a while loop is the do...while loop.

**[04:30:02](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16202s)**

So let's give an example of that. I'm just going to complete these. So, this basically says, it's kind of the reverse of the while loop. It says, do delete the first item in the array and keep doing this while there are items in the array to delete. So, I've completed some on the GUI, so this should work.

**[04:30:22](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16222s)**

Now, the difference between the two loops is a do loop will always do the thing in the loop, then check the condition. But the while loop will check the condition first. Then only if the condition passes will it do it. So if not nothing is completed here. If I try the do while again, we'll get an error. Right? Because we've said delete the first completed item. But there is no first completed item. If I use the while loop, it will pass because it would say while there is a completed item, then delete it, but there is no completed item.

**[04:30:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16256s)**

So it doesn't attempt to do the action. So, it's worth being aware of for loops, working backwards with the for loops, do...while loops, and the difference between do...while loops. And there's plenty of information on JavaScript online for you to have a look at to understand that. And now we're going to amend them all.

**[04:31:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16273s)**

Now, amending is pretty simple. We're just going to iterate through the length of the array and then use the command that we saw earlier on to we're going to save a new object or an object with the existing items title. We're going to get we're going to read the title. Then we're going to concatenate to-do on the back of it. And we're just going to do this over a loop. There we go. So, you've already seen examples of how to do this code.

**[04:31:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16304s)**

Hopefully, if you didn't manage to do it with the exercises, hopefully you can follow these answers and figure out how to do it by looking at the code that's on screen here.

<a id="chapter-13"></a>

## 04:31:45 — TodoMVC Application Summary

**[04:32:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16325s)**

So, quick summary. So even though that was a very simple application right the TodoMVC app is designed to be simple the complexity comes from the frameworks that we're using in JavaScript but when we start to understand them it becomes a little bit easier I'm hoping that having seen us create 100 to-dos in a matter of milliseconds being able to complete them in different orders being able to toggle them being able to delete items being able to work at it really fast in bulk.

**[04:32:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16358s)**

Hopefully, you can see the benefit of working from the console in combination with testing it from the GUI. We don't need to learn any automated tools to help us when we're working in this way because we're working with the tools that we have which is the browser and the dev console and the JavaScript console. We do have to learn JavaScript. We do have to learn how to understand the JavaScript in the application so that we don't create things that are not valid for the application.

**[04:33:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16390s)**

It's very easy for us to cheat. It's very easy for us to do things incorrectly. But that just means we have to understand the code. Now, if you start doing this on your projects, hopefully you'll be able to justify to the JavaScript developers why you might want certain functions to be slightly easier to access. Why you might want to know what the variables are stored in and just generally get more information about how the application works and to make it slightly more testable.

**[04:33:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16421s)**

Now, the hope is that if they're doing unit testing on the JavaScript, they've written JavaScript that is more testable anyway, but frameworks make this stuff harder and they'll probably continue to make this harder. But anything that the browser can do, we can do if we understand how pretty much. It's harder when we start triggering events and keyboard events, things like that is a little bit harder. We might be able to use jQuery to do that, but sometimes the console doesn't have permissions to access the keyboard events in the actual code.

**[04:34:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16458s)**

So we might need the app to be a bit more testable so that we don't hook all our events onto the GUI but that the GUI events call functions underneath. So Backbone is a really good example of this because it's a model view controller application. We don't have to trigger keyboard events to do the same thing that the keyboard would do because the keyboard is calling the view to do some work which is then passing information back to the model to do some work but the GUI itself is basically is just a router for events which passes them on to the code to do the work.

**[04:34:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16497s)**

So all the work that we need to do is actually in the code. And the more that we write apps where we're not hooking code directly into the GUI, we can trigger it from underneath the GUI and test it better. So continue to research JavaScript, learn how to do this a bit more. We're going to give you some resources to practice on in later lectures.

<a id="chapter-14"></a>

## 04:35:09 — Advanced Technique - setInterval and clearInterval

**[04:35:28](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16528s)**

So we have another way of creating loops with our work for automating these applications. And this moves us into the realm of autonomous bots, right? Things that are just going to sit there and do their work without us having to interact with them in any way. So we've got a for loop. For loop will iterate until the for loop is done.

**[04:35:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16548s)**

You could have an infinite while loop, but it'll hog up your console. What we're going to do here is we're going to create something that will run in the background and we'll be able to stop it or start it whenever we want. So, I'm essentially going to create a what's like a thread. We're going to use the setInterval command in JavaScript to create something that runs in the background. So, we're going to use the setInterval command. What I'm essentially going to do is I'm going to have something that runs every second.

**[04:36:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16578s)**

Let's do every second, every thousand milliseconds. And with setInterval, what we do is we create a function in here. And then we can put whatever code we want in here, and it will run that code every second. So, I'm just going to have it changeSlogan, which is going to call the changeSlogan function, which is going to change the slogan on the GUI. If I hit return now, this will work, but I have no way of stopping it. It's just going to keep working until I refresh the browser or close the browser.

**[04:36:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16610s)**

So, what I'm going to do is I'm going to put this into a variable, and I'm going to call it slogan bot because I think of these as little bots that run independently. Now if I run this it will create something that runs every second and when it runs it executes the code in this function.

**[04:37:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16629s)**

So let's give this a shot. So every second now the slogan should change. Now this is the kind of function I use when I'm hacking JavaScript games. If I want it to shoot the game regularly I'll do this. If I wanted it to see if something has appeared and act on it, I can do this. So I could have independent little bots that run with their own routines and memory space and whatever else. And it just gives a lot more flexible.

**[04:37:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16661s)**

And I can have multiple of these running at the same time. And the code in your function can be as complicated as you want. If you want to set up new functions that the bot's going to use, you can add them as variables into the main application space. It can access any global variables. This is just code that you're creating that's going to run.

**[04:38:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16681s)**

Now, I don't have to assign it to slogan bot, but the fact that I have assigned it to slogan bot means that I can stop the thread from running whenever I want. So if I do clearInterval for slogan bot, it should stop. So that gives me the ability to start doing something automatically and stop it whenever I want. The great thing here is because this is running in the background, I can actually still interact with the application. I can still do things and the system can work.

**[04:38:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16718s)**

So I might be simulating, I don't know, multi-user stuff. I might be simulating things happening in the background. I can be doing things at the same time in the GUI. This is very useful. If my bot was changing things in the model of the application, then they get reflected on the front end. That might be useful. So when you start experimenting with this, the options for using this just grow with your imagination.

**[04:39:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16743s)**

So let's demonstrate the multiple timer callbacks running. So let's get this one running. And I'm going to have another one bar fixed slogan bot equals setInterval function. And what I'm going to do here is I'm going to change the text in the slogan manually. So I'll do that with just take this code up here and we'll say hello world. So now when I run this I will have two bots. So I'll have the slogan bot and the fix slogan bot and they will be competing for access to this front end.

**[04:39:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16784s)**

So hello world should appear every 3 seconds and the other bot will fight for access to them. So there we go. I've got two bots running. So let me just close the slogan bot and let me shut down the hello world button. There we go. So this is just two commands setInterval and clearInterval but they give you massive amounts of power. The recommendation I'm going to give you is every time you use setInterval do assign it to a variable so that you can shut it down at will because it's important when we test we have control.

**[04:40:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16816s)**

It might be fun to create a bot in the TodoMVC that creates a to-do every 500 milliseconds or every second and try and interact with the GUI when it does that. See what happens. Here you go. Have a little bit of fun. This set of functions has opened up more opportunities when I'm testing from the JavaScript console than any other command.

<a id="chapter-15"></a>

## 04:40:27 — Overview of Chrome Source Snippets

**[04:40:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16846s)**

So, we know how to use the console to enter JavaScript and make that work with the code that's in our application. One thing that Chrome has in its source view is it has a snippets tool. So if I go up to sources, we can see this snippets tab. And what that allows me to do is have sets of snippets, small pieces of code that I can run from here against the application, which means I don't have to keep typing in the console.

**[04:41:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16878s)**

I don't have to keep track of it elsewhere. I could just put it in the snippets store. Now, I tend to also keep it in a text editor, so I've got a big list of them. But the snippets tool is handy. So, I'm just going to create a new snippet here, which I'll call Sloganizer. Create 100 slogans. Put the code in here. Change the loop. So, the good thing about this is we can pretty print the code. That's useful. It's a lot easier to see what's going on.

**[04:41:50](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16910s)**

Now we have to remember to save it. See this asterisk over here? That means I haven't saved this. So I'm just going to do Ctrl+S. That will save the Sloganizer. And the reason it's important to save it is that later on if we come to import export it, we need it saved in order to have it there. So if I'm going to clear this here, then what I can do in the snippets view is I can just right-click and run. And that's the same as typing in that code into the console, but it's a little bit easier to manage.

**[04:42:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16944s)**

So, you've learned the hard way with the console. That's important. Learn how to use the console. It's important to rely on external sources of saving, but this is a handy feature. It's not fully fleshed out in the sense that all you can do is create them. They are saved in your profile. You can't export them, although we're going to cover that in another lecture. For our purposes, since we're creating small hacks to test applications, this is a useful way of making them easy to access and without having to go into the console all the time.

<a id="chapter-16"></a>

## 04:42:45 — Source of Other People's Snippets

**[04:43:05](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=16985s)**

And because snippets are useful, other people have created them and they share them. If you find any sources of snippets, if you let me know, that would be great. I'll add them in the course. But these are the ones that I found so far. Now, this one is fairly well documented. We can have a look through. If we actually want the code, if we go over to GitHub, then we can actually start skipping through the snippets, seeing which ones are useful, and start using them.

**[04:43:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17015s)**

Or just follow the documentation on the front site and that will take us through to the actual code. Now if we want to use the code what we do is we go into raw copy paste it get a dev tools up and then in the console if I just copy and paste that code in it will run and work.

**[04:44:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17041s)**

Let's find one that's a bit more visual. So, here's another source. This guy used to have an import export snippet, which is very useful, but that stopped working when the dev tools changed their API, but he's got other useful stuff in here. So, as an example, let's pick the local storage size snippet. This is quite useful. So, again, I'll get the dev tools up. I run the code. And there we go. There's the local storage.

**[04:44:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17077s)**

Now, obviously, we could use the sources and the snippets to store these snippets. Some of these snippets have their own snippet management tool that let you download them. But I tend to just copy paste. It's a little bit easier. Then I'm not cluttering up my browser with anything else. And if they've got a snippet that's useful, I'll copy it in directly.

**[04:44:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17097s)**

Now, if you've noticed, these are on GitHub. And if you are interested in keeping up to date with the GitHub repo, the way that I do this is given a particular repo, what I do is I stick commits/master atom at the end and then that gives me an RSS feed for that GitHub repo and then I just monitor that in my RSS reader which is NewsBlur. But you can subscribe to GitHub repos, star them, watch them. But I tend to do this anonymously just through the RSS feed. So if you do find any sources for other people having lots of snippets online, do let me know and I'll try and add them into the course.

<a id="chapter-17"></a>

## 04:45:32 — How to import and export Chrome Snippets

**[04:45:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17152s)**

So having a lot of snippets is great. It's nice and easy. It's nice and simple. We can run them. We've got the code formatting. What a great way to manage the little chunks of code we're going to use to test. But when we're testing lots of applications, how do we import and export these snippets so that we have not got a very cluttered snippets view?

**[04:46:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17171s)**

This doesn't let us organize them into folders. It's just a big list. This can become unmanageable. This can become unmanageable. So we need a way of importing exporting. So the current way I do this is by using some code that someone else has written that they have released as a gist. So, what I'm going to do is I'm going to take this code, going to take the raw for this code, copy and paste it, and put it into my console.

**[04:46:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17206s)**

Now, watch what happens. Now, it's working here, but it's given us a fair amount of errors here. So if I try and export, fact there's no snippets listed. This hasn't worked, right? And the reason it hasn't worked is that we don't run the code from our normal dev tools console. What we have to do is we have to create a dev tools console for our dev tools console.

**[04:47:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17234s)**

So let me explain. So we know that Chrome when we do function F12 will show a dev tools and delete a dev tools. Yes. So we've not got dev tools up. I do function F12, I get a dev tools up and it goes away. Or I can do Ctrl+Shift+I. Now if I do another Ctrl+Shift+I after I've done a Ctrl+Shift+I, then I've got a dev tools console for my dev tools console. So with the dev tools up if I do Ctrl+Shift+I get a dev tools console that is working in the context of the other dev tools console.

**[04:47:56](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17276s)**

Now that gives us access to other APIs and that gives us access to the APIs that this gist needs. So now if I copy the code from this gist and you'll find a link to the gist in the lecture description. If I post this into my secondary dev tools, the dev tools I open from the browser window dev tools, then we can see that the snippets that I've created are listed in here. That's good. What that allows us to do then is export the snippets.

**[04:48:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17310s)**

So I will export as a single JSON all the snippets. Just open that in Notepad. There we go. It's not particularly nicely formatted because I've opened it in Notepad, but you can see that it's a JSON file. All the snippets are listed and it's got the code for those snippets. That's good. Now, I've got an external backup of this. So, what I could do is I could have a snippets file for each application if I really wanted to. So if I was working on a particular application, I could clear down the snippets that I don't want, then export just the ones I do.

**[04:49:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17351s)**

So I'm going to create a snippets file just for the Evil Tester Sloganizer. So if I go up to snippets, I'm going to delete all these TodoMVC ones. refresh the snippets view and I'm just going to export this. I'm going to rename this. So, I'm just going to take this file that we've loaded. There it is. There's the snippets that we've created for the Evil Tester Sloganizer. I'm just going to rename that to evil tester. Evil testers Sloganizer snippets. Then I'm going to delete all the snippets on Chrome.

**[04:50:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17408s)**

Yes, I will do. Now, this is where it gets slightly dangerous, right? Because the import and export is not supported. It's not officially supported. It's not part of the Chrome tool set. So, if I start deleting them and the import or export fails with this plugin, I might be stuck, which is why I also keep my snippets in a text file. But I keep them in the text file anyway because that's typically how I'm developing and how I'm working. But having it in the snippets file is easier because it lets me restore.

**[04:50:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17436s)**

So, having deleted them, I'm just going to save and restart. Let's restart Chrome just to double check there's nothing there. And if I get the dev tools up again in snippets, there are no snippets. So what we're going to do then is we're going to import the snippets we just created. So I need to go off to that gist. I'll get the raw text. I'll copy that. In my dev tools, I'm going to create another dev tools with Ctrl+Shift+I. And in here, going to paste that gist.

**[04:51:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17474s)**

Then I'm going to import by dragging and dropping the Evo test Sloganizer snippets. Then I'm going to save those into Chrome. Then if we close the Chrome down again and do Ctrl+Shift+I to get the snippets up. There are the snippets and I can run them against the Sloganizer. Now that's a little bit painful workflow simply because the Chrome snippets doesn't support an import and export. So, we're having to use external things, but it does work at the moment. The Chrome tools have changed their API in the past, which has stopped these kind of gists working, which is why we want to keep the stuff in a text file.

**[04:51:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17515s)**

Anyway, however, if you do export it into a JSON file, you've got the code there, and it's pretty easy to work from JSON using a JSON formatter. So, you could use the export as your external source anyway. So hopefully that will help you be more efficient when you're testing applications. Just start creating snippets for them. Organize them into text files. You can switch back and forth between applications by using the import and export function.

<a id="chapter-18"></a>

## 04:52:12 — Essential JavaScript References

**[04:52:33](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17553s)**

And I'm just going to give you a quick tour of links that will help you online. Now all the examples we've been using here are in the Chrome browser. The similar functionality exists in Firefox and IE and whatever else because all the developer tools have consoles and they're designed for JavaScript developers and whatever. So any of the browsers can do pretty much this.

**[04:52:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17578s)**

I'm going to point you at the Chrome documentation because we've been using Chrome and you should really follow this up because the console can do an awful lot more and there's a whole bunch of commands that the console has that we haven't touched upon here. So, do the research, learn the console in a bit more detail. To learn JavaScript, there's a couple of free books that are out there. And if you like the books, then certainly with this one, you can buy a paperback copy.

**[04:53:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17605s)**

Eloquent JavaScript is very good. It's quite a nice little book. JavaScript for cats is a very simple website. You can read through this. Goes through the basics in high level but at good level of detail. For references, the W3 schools JavaScript reference. It keeps coming up when you search for things. So, it's very good. The Mozilla Developer Network very often doesn't come up when you search, but is an excellent reference and has some good tutorials. And if you want even more, have a look on this GitHub repo for essential JavaScript links.

**[04:54:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17647s)**

And there's a whole bunch of things down here, tools, books, websites, whatever. And most of the time what you're actually going to benefit from is just learning how to use the console, learning the basics of JavaScript and working with your application and doing web searches when you need to find more information. But if you want to just soak things up, there's a lot of good information here. And all these links are in the description for this lecture.

<a id="chapter-19"></a>

## 04:54:29 — Overview of blogs and YouTube video to watch

**[04:54:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17689s)**

Some blog post you should read and a video you have to watch. So in September 2016 on my blog I wrote a couple of posts about hacking through JavaScript games. So they are worth having a look at. The links again will be in the lecture description. Although I'll zoom in on them here and you can see.

**[04:55:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17710s)**

Now, this is about me essentially hacking some JavaScript games because that's a fun thing to do. And I started blogging about it because I found this video by Philip on YouTube that he spoke at the JS Unconf in 2016. And the video of his talk is here. And he walks you through the steps for investigating JavaScript games, some of the code that you will use, and some fun games to practice on. I do recommend you watch this one because it's on YouTube.

**[04:55:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17742s)**

It was that conference talk. It's only half an hour long. So, it gives you an overview. Gives you enough information to put things into practice, particularly if you combine it with the application testing techniques that we've covered already in this JavaScript section. Have a look at the games he recommends. Follow the techniques he does. See if you can find some other JavaScript games to hack about with. It's good practice. If you are interested in taking this forward for yourself, this is a very good approach.

<a id="chapter-20"></a>

## 04:55:59 — Fun Free Coding Game to Practice JavaScript on

**[04:56:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17780s)**

I'm going to recommend this game to you. Even though I've only just started playing with this, this is very good. It's an online game. It's free if you go off to codingame.com. So CodinGame. Essentially what we're going to do in this game is there are different puzzles and different multiplayer games.

**[04:56:41](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17801s)**

And what we do is we write bots or we have to write code in order to compete. So, you're presented with games like this, puzzles like this, where you have to write some code, then you play your code against the boss and see how it does. Now, I've only just reached a new level where I've just been given a boost. So, presumably the boss already has that functionality, so the boss should beat me because I haven't changed my bot yet in order to have that extra functionality.

**[04:57:13](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17833s)**

But, this is quite fun. When you've got a bot, you submit it to the play in the league and then it will play against a whole bunch of other people. And then if you can get up the ranks, then you get promoted into new things and you'll earn achievements and you have to learn code and it will keep all your versions of your code. So you can see how well you did, what worked, what didn't, and there's puzzles to work on.

**[04:57:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17857s)**

So this is a really good fun way of learning new languages. I'm using this to deal with JavaScript, but it can handle Java, Python. What else? I think Ruby's in here, C, C++. So, there's a whole bunch of things you can do in here. Pick the language you're interested in. I do recommend this because it is fun to play. And you can see I lost against the boss as expected because I haven't used the boost functionality yet, which is something I'll probably try and do tonight.

**[04:58:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17888s)**

But have a look at codingame.com, sign up, work through some of the achievements. You should have the basic skills now from from this course to deal with the first few challenges and bots without any hassle. So, I recommend this. It's quite fun and it's free and it's pretty well put together.

---

[Previous: Interactive REST API Testing](../09-interactive-rest-api-testing/readme.md) · [Course overview](../../readme.md) · [Next: Mobile Web Testing](../11-mobile-web-testing/readme.md)
