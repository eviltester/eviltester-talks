# Interactive REST API Testing — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [02:40:18–03:23:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9618s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [02:40:18 — An Introduction to Interactive REST API Testing](#chapter-01)

- [02:41:07 — What is REST?](#chapter-02)

- [02:46:59 — Exercise and answers: Explore a REST API using a Browser](#chapter-03)

- [02:51:30 — REST Clients and Postman Client](#chapter-04)

- [02:55:38 — Exercise and answers: Postman Client](#chapter-05)

- [02:59:35 — Postman Lessons Learned](#chapter-06)

- [03:02:06 — Example- Playing RestMud without a GUI](#chapter-07)

- [03:12:22 — Exercise: Play RestMud without a GUI](#chapter-08)

- [03:13:25 — Postman through a proxy - example using RestMud](#chapter-09)

- [03:16:23 — A Little More REST Theory](#chapter-10)

- [03:21:53 — Sample REST APIs to practice on](#chapter-11)

<a id="chapter-01"></a>

## 02:40:18 — An Introduction to Interactive REST API Testing

**[02:40:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9634s)**

So in this section, we're going to have a quick look at how you would test a RESTful API. Basically, an API that we access through HTTP calls. Now, we're not going to go into the theory of this a lot, but we are going to focus on the practicalities. So, we're going to show you how to use some publicly accessible APIs. We're going to show you how to access the API from the browser. We're going to look at some tools to help us access the APIs to track the request to make collections of it to make it easier for us to work with it.

**[02:41:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9664s)**

And we're going to play the RestMud game. And you're just going to get a good hands-on feel for how we work with and test REST APIs interactively.

<a id="chapter-02"></a>

## 02:41:07 — What is REST?

**[02:41:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9683s)**

Okay. Okay, so let's start looking at how we test a REST API. REST means representational state transfer which is a fancy name and it's a proper name. There's a proper whole set of theory and rules behind this. But typically what we're talking about when we talk about rest is an application programming interface and API which we access using HTTP calls and where the verbs of the HTTP HTTP call dictate the action that we're going to do when we make the call and we specify the URI as the thing to act on.

**[02:42:01](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9721s)**

Essentially a URL identifies a resource with a URI. It's what we type into a browser. The HTTP verb is get, post, put. When we're surfing the web and we type a URL in the browser, we're issuing a get request. Now, there are other rules for REST. It's stateless. It's cacheable. You will read the REST theory in the references itself. I'm not really going to go into that in more detail. What we're going to concentrate on this course are the practicalities of accessing an API that people have called a REST API.

**[02:42:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9751s)**

Regardless of whether it's a REST API or not. It's not something we necessarily argue about in the real world. Well, people do, but we are not going to argue about it. We're just going to use it. Essentially, it's an API that we access via HTTP with URLs where we either send or receive JSON or XML and that's pretty much it. But there's no GUI. That's the main thing about the rest. There's no GUI for it because it's an application programming interface.

**[02:42:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9778s)**

So, here's a diagram of it. This is RestMud. We've got the GUI which makes calls to the web server and the web app. And it also has a rest API which means we can issue post and get calls to the game and we'll receive JSON requests back. We'll see the JSON responses, the kind of things you saw on the command line. We're accessing the same functionality in the application but we're accessing it not through the GUI, we're accessing it through an API.

**[02:43:26](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9806s)**

So let's have a quick look at an example. So, the example we're going to use is the randomuser.me application. This is a free application on the web. Here it is. Here's their nice front-end page. And essentially, it just generates random user data. It has an API. So, we can read about it and see how to use it. It's telling us here what we do is we issue get requests. This is a very simple API. We just issue get requests. Because we're issuing get requests, that means we can put them in through the browser.

**[02:43:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9838s)**

We don't need any extra tools, which is why it's a good one to start on. So this request here basically says, get this URI, the API at randomuser.me, and generate something with nationality, Great Britain, and gender female. So let's make this call. And there's the response, and it's in JSON. JSON is the JavaScript Object Notation. And what that means is this is valid JavaScript, but it's also a message format that's used in java.net. Pretty much every language under the sun will have a JSON library and allow us to access this as part of an API.

**[02:44:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9874s)**

So let's have a look at that URL in more detail. So URL means Uniform Resource Locator. URI means Uniform Resource Identifier. There's not necessarily a lot of difference. They're the same in my head, but there are formal definitions of it, and you can have a look at it in Wikipedia. So, to break this down, we have get, which is the HTTP verb. We have HTTP colon, which is the scheme or protocol name. So, if you were going to use FTP, then you would put that in as a different scheme name, HTTPS, different scheme name.

**[02:45:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9909s)**

The slash is important for HTTP. There are other schemes where that's not important. So, that's just a constant in HTTP. Then we have the host address api.randomuser.me what we are trying to access. We don't really have a path in here which is the endpoint that we're trying to access. But we do have a query string. So we're doing host the root path which is just the slash then the query string. And the query string starts with a question mark. Then it has a bunch of key value pairs.

**[02:45:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9939s)**

And the key value pairs are separated by ampersand. You'll see this when you surf the web. Normally, we know how to mess with URLs. API call is simply building these up, particularly for this API, which is just gets. So, here is an example of making that call with the JavaScript, which you saw me do live. And if you want more information on JSON, go off to JSON.org or have a look for it on Wikipedia. It's essentially just JavaScript. It might take a little bit of time to learn how to read this, but there's tools out there for making this pretty-printed so you can read it more easily.

**[02:46:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9972s)**

And later on, we'll use a REST client which will pretty print these things for us and make it a lot easier to access it. So, I'm going to leave it up to you to do external reading. So, look up the URI, look up HTTP. The HTTP reference has a lot of good information on the status codes you will see and the headers and whatever else. And for REST studying, I recommend the REST API tutorial.com. That's quite good. The Microsoft API guidelines are new.

**[02:46:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10000s)**

They go into it in quite a bit of detail. You can read the original dissertation for REST, which is a bit academic, but it's worth having a look at because if anyone's going to have an argument about REST, whether our API is RESTful or not, they're going to be arguing about the things in this paper. In practice, we're dealing with something that we can hit using HTTP and change the verbs to do things.

<a id="chapter-03"></a>

## 02:46:59 — Exercise and answers: Explore a REST API using a Browser

**[02:47:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10035s)**

Okay, it's time to get hands on. So, what we're going to do is we're going to use the random user publicly accessible open- source API. And we're going to use that to start with simply because it's well documented. You can access it via get request. So you can do all this in your browser and it's an easy way to get started. So what I want you to do is head off to randomuser.me. This is randomuser.me. Have a look at their documentation.

**[02:47:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10062s)**

Read it. See what you understand. See what you don't. Possibly try out some of the examples that they've got there. Make sure you get a feel for how it works. And then I want you to deliberately get 10 random people from Germany, get two random males from France, get the name, email, and phone number for 25 people, and then try and get the results as a CSV list. So you can feel free to just experiment, but this is the set of examples that we're going to discuss in the answers.

**[02:48:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10094s)**

And the reason I put get beforehand is that that's the verb that you're using when you use it through a browser. You're getting the request through the API and that's what the browser issues. In order to issue things like post, put, delete that we'll discuss later, we have to use the tool. But when the API specifies is a get, we can do that through the browser. And that's how we're going to start exploring the REST API. So hopefully that made sense.

**[02:48:51](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10131s)**

Hopefully you explored the API as well and that the documentation made sense. In order to get 10 random people, all I do is hit the end point. Everything that we're accessing is on the root path. Then I give it a query string. And in the query string, I start with a question mark and I say I want 10 results. So results equals 10.

**[02:49:12](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10152s)**

Key value pair results equals 10 and that's why we use the ampersand because it's query string so we can read it as a query string and this other thing where nat equals de we go so I've got 10 people in there now if I really wanted to I could try and pretty-print this so I'm just going to go off to Google you could use Bing I'm just going to pick the first pretty-printer. There's a whole bunch of them online.

**[02:49:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10185s)**

Let's just pick the first one. See what happens. Going to take the JSON that's in here. Paste it in and pretty print it. So, that's not the best pretty-printer, but it's a lot easier to read at this point. Let's see if there's any better ones than that. Now, there's a lot of pretty printers out there on the world because JSON, remember, is JavaScript. Therefore, anyone can write a JavaScript front end that will reformat the JSON for us. So, this one is a little bit better because we can open and close the parts in here.

**[02:50:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10221s)**

You're probably never going to use one of these online JSON formatters, but it's important to know that they're there. Normally, you probably do most of your JSON testing or your REST testing through one of the REST clients, and they'll do this for you. The rest of the answers are pretty much the same. In order to get two random males. Results equals two and nationality equals France and gender equals male.

**[02:50:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10244s)**

Remember, I found all this stuff in the documentation. The documentation explains how to restrict the results coming back. So here's the nationalities. So including and excluding fields. Here it is. We just pass in the fields we want as a CSV separated list. So all of this is key value key value. Then when we issued the CSV call, so I issue the call for CSV and our browser is smart enough to know this is a file and it's coming back and downloading it.

**[02:51:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10280s)**

When you do this in a REST client, chances are you'll see the CSV response in the client itself. But when we're doing it through the get on the browser, it will download the file for us. So the reason I'm showing you this is it's also a useful handy thing for us if we want to generate test data in the future.

<a id="chapter-04"></a>

## 02:51:30 — REST Clients and Postman Client

**[02:51:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10307s)**

So accessing a REST API is possible through the browser as long as we just want to issue get requests. There are plugins for every browser that will allow us to do the full range of verbs and they're called REST clients. So REST clients are essentially a GUI that allow us to interact with the REST API and there are loads of them, right?

**[02:52:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10328s)**

They allow us to issue REST API calls using the combination of different API verbs. Some of them let us put in data from files. Some of them let us iterate over that data to issue a lot of API calls. Some of them let us build up collections of the calls to make it easier to access. And there's loads. The one that we're going to look at is the one that I use most often, which is Postman. The reason I use Postman is it's built on Chrome, so it runs on Windows, Linux, and Mac.

**[02:52:37](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10357s)**

So, different crossplatforms. It's free. There are parts you can pay for, but the paid parts are very, very small. I think I paid $9 for the ability to iterate over text files and send in multiple requests, but by default it's free and you can set up shared collections. So when you've used an API a few times, you can build up a collection, a set of requests and you can share them and it will automatically sync between different machines. The way that we get Postman is going off to get Postman.com.

**[02:53:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10386s)**

Since it's a Chrome plugin, you're better off using Chrome to do this. Get the Chrome app. I've already installed it, so it's just going to say launch. But if you haven't, you go through the install process at this point. So, having installed Postman, let's get it started. So, if I get the Chrome browser up and I go to Chrome apps and click Postman, Postman will start up.

**[02:53:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10414s)**

Now, I'm logged in, right? I have an account on Postman. So, I'm logged in. It synced to the server and brought in all my collections of stuff, all the requests I've made in the past. That's an incredibly useful feature and it's one of the main reasons why I pick Postman. Now, you can use Postman without an account. I don't know if it saves it locally or not. I haven't used it without an account. I just set up an account because it's free and the synchronization benefits of doing that were just massively important.

**[02:54:03](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10443s)**

So, here's the Postman GUI explained in a slide. So you can see we've got the request that we're issuing up at the top. We can choose the verb can be get, put, post, delete, whatever else. We put in the URI and the path that we want to work with and the query string all in that URI section. We click the send button to send a request and we'll see the results come back in the results part. So here's one of the requests we did earlier from the previous exercise.

**[02:54:36](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10476s)**

Random user me nationality Great Britain gender female. So this should return a single person who is female from Great Britain. And there we go. I can see the results in here. It's pretty-printed as JSON, which makes it a lot easier. I can see how long the request took. I can see it responded with a 200 code, which is okay. Later on, the response codes are going to be important for us. I can see what headers were sent back. So this is a lot of useful information at a very high level to start working with REST APIs.

**[02:55:11](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10511s)**

If I wanted to, I could control the verb that was put in. Let's post this. I don't think the API supports post. There we go. It's not allowing us to do a post on this endpoint. So it's saying 404 not found. There's a whole bunch of the verbs, but we're at this point going to be focusing on get. Since it's random user, every time I issue this, I get a different set of details. That's the whole point of the random user.

**[02:55:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10535s)**

And if you want to get the same one each time, remember to read the documentation for random user. And you'll see how to set up a seed value.

<a id="chapter-05"></a>

## 02:55:38 — Exercise and answers: Postman Client

**[02:55:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10554s)**

So, exercises to help you get used to Postman. What I want you to do is use Postman, which means you're going to have to install Chrome if you haven't already. Get Chrome working. Go off to get Postman.com. Install the Chrome app. Go off to Chrome apps. Start Postman. And then repeat the previous exercises that we did. So the four queries that we set up using get. Then what I want you to do is experiment with the results in different formats.

**[02:56:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10583s)**

XML, YAML, CSV. You'll find the information on how to do that on the documentation for the random user API and see how you get on using the API in a REST client. It should be a lot easier. Okay. So let's have a look at the answers in Postman. Now feel free to try different REST clients and perform the same exercises that will allow you to compare the different REST clients. To be honest, my absolute default is generally Postman. But periodically if I'm working in IntelliJ, I'll use the REST client that's in IntelliJ.

**[02:57:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10629s)**

It's very basic. But sometimes I just want something quick to fire off. But let's have a look at Postman. So if I didn't already have Postman running after installing it, I go into Chrome, go up to Chrome apps and then start up Postman. So let's have a look at these exercises. So hopefully you find it fairly easy. We're doing the same exercises as before. I've got the get request verb there. I put the host, the path that I want, which is just at the root, the query string with question mark results 10de and send it.

**[02:57:48](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10668s)**

And the benefit here is we've got the pretty-printed response that we can use. And it's important that we've got a pretty-printer in there. It's a lot easier to read and it's easier for it to format. So let's try the XML, JSON, and CSV responses. Let's make sure that's a query string. The API supports different formats.

**[02:58:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10688s)**

Let's start with CSV and send that through. Now, CSV is normally going to come back as a file for us. But because we're doing it in a client, we get to see it in here. If we really wanted to, we could copy and paste this out. It's very simple, nice and easy. There's not a lot of formatting we can do on that because it's just CSV. None of the other formats are going to work for us. So, we're either going to use HTML or text.

**[02:58:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10711s)**

That's fair enough. The other one that it supports is YAML, which is that Python text type format. Don't particularly like YAML very much. There's no YAML formatter in here. So, again, we're left with one of the text formats, HTML or text. So where it gets really good is when we say for it in JSON which is the default and then we can close these parts and we've got proper view of the data or we could say XML and again we've got the closing we've got the syntax highlighting and it's detected that it's XML for us.

**[02:59:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10755s)**

We can tell it is something else, but XML and HTML should work fine for XML. So I can view as text and that will get rid of the formatting. But what the Postman client is good at is detecting the syntax that you're working with pretty-printing it. And if it's a long response, you got the chance to close these things down and read them. So all in all, that's quite useful.

<a id="chapter-06"></a>

## 02:59:35 — Postman Lessons Learned

**[02:59:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10792s)**

So, I just want to cover a quick Postman lessons learned just in case these bite you in the future as well. I've used Postman quite a lot and I use it for exploratory testing. So, I've got the browser up, I've got Postman up, I'm going through the app as well as the API.

**[03:00:07](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10807s)**

Now because Postman is running in Chrome, it shares this stuff that's in Chrome. So if you've logged into the application under Chrome and you access the API on the same kind of host, so API do random data, it would be the same cookies as random data.com and it can get in a bit of a well, it will share the cookies and if you're not expecting that, you can have the wrong things happen. I was logged into an application. I was testing the API because it was sharing the cookies and I was testing permissions.

**[03:00:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10842s)**

I thought there was a problem with the API not honoring the permissions because I wasn't logged in through the API, but I was logged into the application and I got confused. Benefits are when you set up Chrome to use a proxy, Postman will also use that proxy. And that's tends to be how I use Postman. I tend to always use Postman through the proxy because Postman shows us what it thinks it sent as its response, what it thought it used as the URL, but I use a proxy just to double check and to see exactly what request is being sent through and to see exactly what response is coming back, not the nice tidy response that Postman sometimes gives me.

**[03:01:20](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10880s)**

It just gives you that extra level of observability. And also sometimes it's easier to manipulate the request once it's gone through in the proxy and I can resend and change it that way. I can also use Postman to set up the request I want to send through and then I could fuzz it in the proxy. We're going to look at collections and templates later on. Because it's Chrome, it shares cookies and it shares the proxy settings. Use that to your advantage and use a proxy easily with Postman.

**[03:01:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10917s)**

But just be aware that if you're logged in the application, you might also be logged into the API and sharing cookies between those two. None of these things are bad. Postman is a very good tool and it's free and it's the main REST tool I use for interacting with the REST APIs.

<a id="chapter-07"></a>

## 03:02:06 — Example- Playing RestMud without a GUI

**[03:02:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10943s)**

Okay, so now I'm going to show you Postman in action using it to play the RestMud text adventure game. Now remember the RestMud text adventure game. You can download it from the CompendiumDev site. We just download the zip file, unzip it in a folder, and we've got the jar file. And we'll do java -jar to start that.

**[03:02:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=10965s)**

Now, in the readme documentation for RestMud, if I scroll down, I can see that it says there's an API. So, I can do get requests on the API and I can post requests into the API. Now, with REST, we've got a whole bunch of verbs, get, post, put, delete. But what we're going to focus on at the moment are just get and post. Get retrieves information. Post tends to change information. The RestMud doesn't really make that distinction, but it will allow you to explore with the multiple verbs in Postman, and that's why we're using it here.

**[03:03:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11001s)**

So if I start up RestMud, I go in the Chrome browser local host 4567 and there is RestMud. Remember one of the gotchas that I mentioned, one of the lessons learned is that Postman will share session state with RestMud. For what we're going to do here. That isn't a problem. So, let me get Postman up. Okay, I'll move that over this side. Not that interested in collections at the moment, but we will be very soon. Okay, so in the GUI, we know that we can issue requests like look, I can do exactly the same request in Postman.

**[03:04:09](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11049s)**

Let me take the whole thing here because Postman is essentially issuing a get request just like the browser does. And off we go. And we'll see the information in HTML format here because that's what we've issued. We've issued a HTML request. We'll get exactly the same information back. What we really want to do is the API call so we can start accessing the JSON. If I wanted to, I could just carry on playing the game with gets in here using the normal get interface that the browser uses.

**[03:04:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11080s)**

But we want to drop down to the API and that means using the API path. So here essentially is how RestMud works. The interesting thing about RestMud is we've got the GUI, we've got the rest API. There's a slight difference when the request is put into the application about how it's parsed, but both of the responses, both the processing of those requests is done by exactly the same part of the application, exactly the same verb processing code. Which means that if I do a lot of testing through the REST API, I am pretty much covering the functionality of the application.

**[03:05:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11114s)**

Since the REST API is easier to automate than the GUI, that is where I would probably want to expend effort if I wanted to automate this application to support my testing. It would then mean that when I tested the GUI, I would be concentrating on the rendering, the interface between the GUI and the verbs, but not necessarily all the different combinations of data. I can do all the different combinations through the REST API for functionality. I might want to do combinations through the GUI, not to see necessarily how the backend application responds, but just to make sure that the parsing of that request is okay.

**[03:05:52](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11152s)**

So, here's the documentation from the readme.pdf. So let's use this in our testing. So it's basically API player user verb. Let's see what we've got in Postman. What we want is API slash player user verb. So that should be an API call. Let's see. And there we go. So we've issuing a get request to the API to look. And now we're seeing the JSON comeback. And this is the same JSON that you've been seeing in the console, but now we're interacting with it.

**[03:06:27](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11187s)**

So now I can choose to do things in here. So I could choose to go north. go/north. Now you can see that with the RestMud API, we're not really doing query strings. Everything is in a path, which is much more in keeping with a typical REST interface. And basically it's normally the paths that deal with endpoints then query strings for them.

**[03:06:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11214s)**

Now you could argue this is incorrect and the path should be user/go and the query string should be north. But that's not how it's currently been implemented. So if I go north because it says we can go north in the direction. There it says success. You go north. And we can see that there are no destinations listed in here in the output. But we've experienced that when we played the game anyway. So I can go south.

**[03:07:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11239s)**

Now the documentation also has the post form and we can see that in order to issue a post request I have to take turn it into a JSON payload. So let's use this as the basic template. So to turn it into a post request I'm going to use the post verb. You can see now that Body is enabled. When I do get body is not enabled because you're not supposed to send through a body when it's a get request. When I do post body will be enabled.

**[03:07:47](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11267s)**

So then I can paste in the thing that I want and the verb was go and the noun phrase was N for north. Now if I send that, let's see what happens. It says player doesn't know how to go south. Why is that? Because we didn't change the end point. The point about the posts is that it's supposed to be API player/ user API player user then this.

**[03:08:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11301s)**

So let's send that. There we go. Let's change this back to pretty print on JSON. Now normally with REST APIs you have to set the application type to represent the body text that you're sending through. RestMud doesn't enforce that at the moment. So I didn't need to do that, but it's good habit to get into to say I'm sending you JSON. Here is the JSON. So I guess the other thing that we should look at here are collections. I'm going to create a new collection for this.

**[03:08:55](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11335s)**

So what I'm going to do is I'm going to save this. If I do save as post go because it's a post and it's making a go request. Now I could say go north, but I'm just going to say go at this point. I'm going to create a new collection. I call it Postman video and save that. So now I've got the Postman video collection. So I'm going to add another one.

**[03:09:21](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11361s)**

So let's see. Let's if I say go south send. There's a sign on the wall hint. So I'm going to say examine hint. Right. And what I'm going to do, examine a hint. Let's send that. You examine the sign wall. I think you go sight in a strong room. What I'm going to do is I'm going to save this and I'm going to do a save as. Otherwise, it will overwrite my existing post. Go. In fact, what I should have done before, so I'm going to say post examine save it to existing collection.

**[03:10:06](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11406s)**

Now, I made a mistake earlier on. So, I'm going to do is I'm going to click on this one. I'm going to say save as, but I'm going to change the name to post go because I forgot to do that last time. Save to existing collection. We've got this old one here. So, let's just delete that. So you can see in my collection now I've got postexamine and post go. What I should really have I guess is a look. But I'm going to make the look a get user/look.

**[03:10:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11449s)**

Send that. So now I can look. Let's save this. So I want to save that into the post and video collection. Save. So now you can see I'm building up a collection of requests. So here I can I've just looked I can see that I can go south. So what I'm going to do is I'm going to click on the post go change this to be south and send that. Then we get this. So now what I could do if I really wanted to is save this as a go south, go east, go west.

**[03:11:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11494s)**

And I could have go south, go east, go west out here. And it'd be a lot easier to go navigate around. I can look at anytime I want now by just clicking on the look point. And this is the whole point about the collections. Once we've made a request, we save it into a collection and it's acting as a template request. At that point, I can reissue the request exactly or click on it to bring the request up and then amend what is in there and then resend it through.

**[03:12:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11524s)**

Postman has a whole bunch of other facilities like environment variables, but we're not going to go into those. You can explore those later as you need them. But get in the habit of creating a collection to allow you to reuse the requests you've got. And if you want to see what you've done, you can go into history and it will show you roughly the kind of request that you've been sending.

<a id="chapter-08"></a>

## 03:12:22 — Exercise: Play RestMud without a GUI

**[03:12:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11560s)**

So as an exercise, you should have Postman already installed. Now I want you to run your copy of RestMud and use Postman with it. If you haven't got RestMud remember you can just head off to compendiumdev.co.uk/page/restmud. That'll take you here. You can download the zip file. Unzip it. java -jar to start the archive. And then you can access localhost 4567 to play the game. And we want you to experiment with the API and see how you can play the game using that.

**[03:13:17](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11597s)**

And also build up a collection as you play it to make playing the game easier. Use a combination of get, try using the posts, use the pretty print view to understand what you're doing, and over time build a collection to help you.

<a id="chapter-09"></a>

## 03:13:25 — Postman through a proxy - example using RestMud

**[03:13:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11622s)**

So, I'm going to play RestMud again using Postman, but I'm going to go through a proxy this time so we see the difference. So, I'm just going to use the OWASP ZAP proxy. Let's see where the proxy is running. So, the proxy's on localhost 8,000. Let me get Chrome up. So, here's Chrome.

**[03:14:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11650s)**

Now, I tend to use FoxyProxy to switch between the proxy settings. So, I'm using FoxyProxy standard. Let's have a quick look at the options there. And I already have Zap set up here on port 8000. If it wasn't here, I could just add new proxy. Localhost 8000, give it a name, a color, and then I'll be good to go. But I've set up Zap on localhost 8000, and it is red.

**[03:14:42](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11682s)**

So, let me choose Zap as my proxy. Let's just double check that it's working. And there we go. That's the request going through. So now if I get Postman up, I've got my collection. I've got a look here. So if I look through here, there we go. There's the request in the proxy get localhost API that was issued by there. So now we can have a proper look at what requests are being sent through. This gives us a little bit more information about what we're doing.

**[03:15:23](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11723s)**

Also means that I can if I wanted to start fuzzing those requests, I could resend them and edit them. And sometimes with some requests in some of the applications you're going to test, this can be an easier way than going back into Postman. So I go, I've just asked for the score that we've got.

**[03:15:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11749s)**

Now you can see the difference here. The JSON is not pretty-printed when we come in to the proxy. But I've got more information. Whereas if I was to issue this through Postman, everything is pretty-printed now that I've done a score. I'm just going to save as get score into my collection. It's handy just to build up the collections over time. So there was nothing complicated there about setting Postman up to run through the proxy. It was exactly the same as just setting up Chrome to go through the proxy.

<a id="chapter-10"></a>

## 03:16:23 — A Little More REST Theory

**[03:16:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11800s)**

So just a little bit more theory before we go ahead. You've seen us use get requests. That's what the browser issues that retrieves data. You've seen me use post requests. A post request lets me put some information in the body of the request and send it through. That's because we're often using a post request to create entities using a REST API to insert data in the application.

**[03:17:04](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11824s)**

Very often we'll use a put request to amend data. So if we have already got an entity in there, we'll issue a put request on an endpoint to amend it. And the same if we've got an endpoint, we can issue a delete request to delete that. And you see different APIs implement this in different way. So it's worth reading the documentation for the APIs that you're using. Experiment with a bunch of different APIs because they interpret this in different ways. Expect things to be different in practice when you use it.

**[03:17:34](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11854s)**

But this is in general post to create, get to retrieve, put to update, delete to delete. Now when you issue HTTP requests we get return codes and that lets us know what has happened. So the 100 series the 1xx series is usually informational messages. 2xx are successful. So like 200 messages being okay. 3x is a redirection which means you probably have information in that response telling you where to go to retrieve the information that you need. 4x series is a client error.

**[03:18:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11890s)**

It means that you've made a mistake. The 5XX series means that something's gone wrong on the server when processing your request. And you'll see the list of status codes explained on Wikipedia if you want more information. Now, in practice, there's a few status codes you're going to see quite a lot. So, you're going to see 200, which means okay, everything was good. 201 means in response to your request, something was created. So very often after put issuing a post 204 means we dealt with your request successfully but we're not really telling you anything.

**[03:18:43](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11923s)**

So that might be after a put or a delete with the 400 telling you if you've done something wrong. 400 basically means something you did something wrong. I can't even tell you what it was. 401 means you're unauthorized. Chances are you might have to use a Basic Authentication header or you haven't got a cookie installed to let you authenticate on the system. 403 means forbidden means that we know that you're authorized to access this system, but you're not access authorized to access this part of the system.

**[03:19:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11954s)**

And 404 means you tried to access something that we just couldn't find. And the 500 errors are when you've sent a request and the server can't handle it. So a 500 basically means you've blown up the server. It doesn't know what to do. 501 means the action wasn't implemented. You tried to get me to do something, but that's not implemented. I know I should. Sometimes with an API, that means it was in the documentation, but they haven't implemented that. You might see that during development. 504 usually means that something is timed out.

**[03:19:44](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=11984s)**

And if you see a status code you don't know in Postman, if you hover over the status codes, it will usually tell you what it means. which is quite useful. Now, we already mentioned authorization. The most typical way of using authorization is through an authorization header and very often a Basic Auth header. Sometimes APIs are as simple as this. Sometimes it's a cookie. You log in, you get a cookie, you use that in your requests. Sometimes it's a token that you have to put in a custom header.

**[03:20:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12016s)**

But again, the API documentation will tell you what you have to do. If it is Basic Auth, it's basically a authorization header. It has the word basic and it has the username and password encoded. The value after Basic contains username:password, Base64 encoded. So let's give you an example of that. So if I go in here, this is just normal get request.

**[03:20:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12046s)**

Now, RestMud doesn't require Basic Authorization, but it won't complain either. So, if I go into the authorization tab here, set up for Basic Auth. Type in the username. Put in a password. Just double check. Yep. Username, password, and then I do update request. You see it just added a header. So in the header I've got Basic, followed by the encoded value which is what we had in the slides. So now if I send that request through because I've got the proxy running click on this request we can see that the request has the authorization header exactly as we specified.

**[03:21:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12098s)**

So if I needed to be authenticated on the application and there are versions of RestMud where you have to do this just not publicly available then this would allow me to log in to the application. This is the simplest way of logging in but again the API documentation that you use will tell you what you have to set up. This was just a little theory section to be aware of some of the options.

<a id="chapter-11"></a>

## 03:21:53 — Sample REST APIs to practice on

**[03:22:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12130s)**

So both the examples we've given you early on are nice and easy. RestMud doesn't really care very much whether it's a get or a post. It doesn't enforce a lot of things. You don't have a lot of headers to work with. So it's very easy to just get up to speed. Use rest with Postman and make things happen. The random data API is just a get interface.

**[03:22:30](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12150s)**

So again, it's very easy to get started with. What you want to do is start testing some real apps. So the apps I'm going to recommend to you are both open- source. Tracks and Redmine. Redmine is a project management system. You can find all the information on Redmine.org. I recommend you run it from one of the pre-built virtual machines either from TurnKey Linux or from Bitnami. Either of those should work in VirtualBox or VMware. What I tend to do is I'll download the TurnKey and I'll download Bitnami and whichever one of the VMs works first is the one that I will use because essentially I'm just downloading something to test it and disposable with.

**[03:23:14](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12194s)**

The Redmine API is quite fun to get your head around. It's fairly well documented. And the Tracks is a essentially a to-do list using the getting things done methodology. And again, you can get pre-built virtual machines from Bitnami or TurnKey Linux. So, if you want systems to get started with that offer you the complexity of a real API with authentication with real errors, redirects, the Tracks and Redmine are worth having a look at.

---

[Previous: HTTP Proxies](../08-http-proxies/readme.md) · [Course overview](../../readme.md) · [Next: Testing JavaScript from the Browser Console](../10-testing-javascript-from-the-browser-console/readme.md)
