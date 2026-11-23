## Exercises for "Technical Mobile Testing"

### Identify Your Pain Points

Make a list of all the pain points in your process.

* What can't you do on the mobile devices that you want to?
* What is currently hard to do? e.g. take screenshots, copy data to PC
* What do you do when testing desktop apps or web sites that you don't do on mobile?

### Identify workarounds

For each of the 'pain points' that you identified, start researching options for how to solve them.

Make sure you identify multiple possible ways of solving them - don't just find one. Because some you will be able to implement easily, and some may add more value, but will take longer.

### Try using a proxy to view mobile traffic

Download and install a proxy tool on your desktop, and configure your mobile application or device so that it sends all traffic through your desktop proxy.

Recommended proxies are:

* Fiddler (Free, Windows .net only)
* Charles (Shareware, Windows and Mac)
* BurpSuite (Free version, Windows and Mac)
* Owasp ZAP Proxy (Open Source, Windows and Mac)

You may need to spend additional time learning how to use the proxy.

### Try wireshark

IF the proxy doesn't work or doesn't show you the traffic you need, then investigate WireShark. This is a network level tool so is harder to use.

* https://www.wireshark.org/

### Create Cheat Sheets for all devices

For each of the devices you use, create a cheat sheet:

* How to take a screenshot
* How to change proxy settings
* How to configure wifi
* Apps installed on device
* OS version on the device
* What cable to use
* etc.

Identify the functions that you use on the devices when testing and create a customized list for your environment.

### Investigate screen recording tools

How can you create movies of your testing on the device?

Can you share the screen of the mobile on your desktop to use desktop recording tools? 

* Investigate OS level functions like AirPlay, Chromecast, MiraCast.
* Investigate software solutions like VNC
* What other solutions are there?

### Investigate alternative control methods

Are there any tools you can use which let you control the mobile from your desktop?

Can you add external keyboards to your devices?

Does this help you test more easily when you experiment with these approaches.