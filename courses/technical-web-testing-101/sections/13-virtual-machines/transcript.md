# Virtual Machines — Transcript

Technical Web Testing 101 · Alan Richardson

**Video range:** [05:40:45–05:47:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s)

Edited from YouTube's automatic English captions to correct obvious recognition errors, spelling and sentence breaks. Chapter headings follow the published video timings; paragraph links locate the edited passages in the full recording.

[Section overview](readme.md) · [Summary slides](slides.md)

## Contents

- [05:40:45 — Introducing VirtualBox modern.ie Turnkey Virtual Machines for Web Testing](#chapter-01)

<a id="chapter-01"></a>

## 05:40:45 — Introducing VirtualBox modern.ie Turnkey Virtual Machines for Web Testing

**[05:41:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20468s)**

Welcome. I'm just going to give you a quick introduction to VirtualBox. And I'm going to do that because my Windows machine has prompted me that there's a new version of VirtualBox and I should really install it. So, I'm going to do that, but I'm going to give you a quick overview of VirtualBox at the same time because it's pretty easy to install and work with. So, this is VirtualBox and it's running. This is the old version. You can see that I have a couple of virtual machines in here.

**[05:41:31](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20491s)**

First one I got from TurnKey. TurnKey is a website with a lot of pre-built applications. You can see here we've got Drupal, Joomla, LAMP. If you're doing any kind of I've been using the VirtualBox here for Redmine, which is a very simple project management, time tracking type application, which using an older version is relatively buggy. It's got an API, so it's quite fun for experimenting and practicing my testing against. So to download VirtualBox, we head over to the virtualbox.org org site where we can download the pre-built binaries for Windows or Linux and Mac.

**[05:42:08](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20528s)**

So, I've got it running on my Mac. I've got it running on my Windows machines. One really useful thing that I find about VirtualBox and that I use most in the virtual machines is over here on the Microsoft site, they've got modern.ie. So, modern IE is a Microsoft site which has virtual machines for all different operating systems with different versions of Internet Explorer to allow you to do compatibility testing. So, you can get IE6 on XP, IE7 on Vista, IE9 on Windows 7, and other IE versions on Windows 7 and Windows 8.

**[05:42:39](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20559s)**

And these are free to download. They run for about three months without activation, which usually gives enough time to practise testing different applications. You can head off to modern.ie and get new versions. I'm going to install it now; I've already downloaded it. Installation gives us a small dialog. Typically, I select all the options and click Next with the defaults. I'm saying yes to these installs.

**[05:43:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20604s)**

Let's start it and have a look. So here are the operating system. Whoops. So it's prompting me to add the extension packs. The extension packs are useful. They give you better integration between your VirtualBox and the host operating system that you're working with. So yes, I want to install that. So what I'm going to do very quickly is download the IE6 machine and I'll get that running in VirtualBox.

**[05:43:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20638s)**

Now I need to download both parts here, part one and part two. First part.exe, the second part is the second half of the archive. So when it downloads, I'll just run the.exe. It will unarchive it and create a VirtualBox for me. Okay, that's downloaded now. So I have downloaded Modern IE, the two downloads that you saw. I've put it in an IE6 folder just to make it a little bit more obvious what we've got here. If I double click on the part one part which is an application, it will extract everything for me.

**[05:44:40](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20680s)**

And you can see here that what we've got is an open virtualization format archive. Okay, how do we use that? Well, if I jump over to my VirtualBox manager, let's try import appliance. And now it's going to create this virtual appliance for us. So you can see I can adjust the RAM settings to whatever I want. The image is going to be created in the standard VirtualBox folder. I could move that if I wanted to. I'm just going to leave it there just now.

**[05:45:25](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20725s)**

So now I should be able to just start this machine. Now you can see I'm running XP. We've got all the different information that we need about this virtual machine on the desktop here. You do kind of have to remember the username and password if you want, but they're standard across all the different machines. I just got the normal. Here's your new machine starting up. So in theory I should come into start Internet Explorer. Yes. And there we have the joy of IE6 which no one likes and no one likes testing on.

**[05:46:16](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20776s)**

But because we never install it in any of our machines anymore, if a client is saying to you, "This must be IE6 compatible." This is how you do it. You go off and get the IE6 virtual machine from from modern IE. Now, clearly there are differences between testing things on a virtual device and a real device. But a lot of the testing that I do is on a virtual machine because I can have multiple machines running at the same time. I can run automated tests on a virtual machine and not bother my main machine.

**[05:46:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20805s)**

I do a lot of work on virtual machines. So, I'm putting this over for you so that you can start experiment with virtual machines if you haven't already if you want to actually try with applications to test. Go off to TurnKey download some. I'm going to quickly show you the Redmine on turn key. So, you can see here the start is telling me that if I go off to 192.168.1.141.

**[05:47:10](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20830s)**

Let's try that. 192.168.1.141. So there's the Redmine application. It's actually running in the VirtualBox on my machine in theory 92.168.1.141. So I can also access it from a virtual machine. So my virtual machine here that's running IE6 on Windows XP can connect to this TurnKey virtual machine which is running Linux all in the same box and lets me test different applications from different browsers. It's an absolute boon for technical testing, experiment technical testing, doing automation across different browsers, setting up your own grid, whatever.

**[05:47:59](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20879s)**

Get used to using virtual machines. Start with VirtualBox because it's free. You got a whole bunch of applications and enjoy yourself.

---

[Previous: Mobile Testing with Wireshark on Mac](../12-mobile-testing-with-wireshark-on-mac/readme.md) · [Course overview](../../readme.md) · [Next: Case Studies](../14-case-studies/readme.md)
