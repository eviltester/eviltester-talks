# Incognito Mode — Summary and Findings

[Original PDF](exports/incognito-summaries-txt.pdf)

## What do you believe incognito mode should do?

- downloads
    - not track
    - not show non-private downloads
- cookies
    - separate from non-private sessions
- plugins
    - choose to use plugins installed in browser, but not enabled by default as these might not maintain privacy
- cache
    - separate cache from non-private
- multiple private sessions
    - each ‘private’ tab/browser should be a new session with no cookie jar sharing and cache
    - set proxy settings for each tab/browser
- history
    - tracks history but lost at end of session
    - can not see history of other tabs
- access dev tools
    - dev tools do not bleed into each other e.g. shared console, shared network tab

## Identify all the ways that you can start incognito mode in each browser

### Chrome (Incognito):

- Tools - New Incognito Mode
- Ctrl + Shift + N
- Right click on a link and open incognito mode
- Command + Shift + N (Mac)

### IE (InPrivate):

- Tools - Safety - InPrivate Browsing
- Ctrl + Shift + P

### Edge (InPrivate):

- Tools - New InPrivate Window
- Ctrl + Shift + P

### Firefox (Private):

- Tools - New Private Window

### Safari (Private)

- File - New Private Window
- Shift + Command + N
- In a private window, right click on link to ‘open in new private tab’, ‘open in new private window’

## Find the official documentation

OFficial Documentation:

- Chrome
    - https://support.google.com/chrome/answer/95464?hl=en-GB
- Firefox
    - https://support.mozilla.org/en-US/kb/private-browsing-use-firefox-without-history
- IE
    - http://windows.microsoft.com/en-gb/windows/what-is-inprivate-browsing#1TC=windows-7
    - http://windows.microsoft.com/en-gb/internet-explorer/products/ie-9/features/in-private
- MS Edge
    - http://windows.microsoft.com/en-gb/windows-10/browse-inprivate-in-microsoft-edge
- Safari
    - https://support.apple.com/kb/PH21413?viewlocale=en_GB&locale=en_GB
    - https://support.apple.com/kb/PH19216?viewlocale=en_GB&locale=en_GB

What does each browser actually do?

### Chrome (Version 48.0.2564.82 m):

- incognito session does not share cookies with non-incognito
- lastpass is enabled in both incognito and non-incognito, this is controlled in the “chrome://extensions/” extensions settings - allow in incognito, individually for each extension
- only a single incognito session, so there is the ‘main’ session and an incognito session
- can create multiple incognito sessions if switch to another user profile before creating incognito session, then can have multiple incognito sessions
- no history maintained in incognito
- incognito session and main session share the same proxy settings
- dev tools seem separate
- “chrome://downloads/” downloads lists all previous downloads from other sessions so is shared
- “chrome://history/” history is not enabled in the incognito mode, but when I try an access it from “chrome://history/” then I jump to the main session window

### Firefox (43.0.4):

- cookies are not shared
- lastpass enabled in both private and non-private
    - could not see how to switch off in private mode, so assume all extensions are available in private mode
- new private session from private session shares cookies, all private sessions are essentially the ‘same’ session and share cookies
- downloads for private session are not the same as in the main
    - downloaded epub https://www.gutenberg.org/ebooks/51028
    - shown in private downloads but not in main downloads
- history is not tracked for private, but the main history is available to both sessions
- same proxy used for both sessions
- Dev tools seem separate

### IE 11:

- cookies are not shared
- IE offered to save passwords in non private, but not in private
- LastPass enabled in main but not in private - no Addons in private
- there is only a single inprivate session and new inprivate sessions share the same cookie jar
- separate download lists for main and private
- history is not tracked for inprivate, but the main history is visible to private session
- proxy settings are shared

### MS Edge:

- cookies are not shared
- offered to save passwords in non private, but not in private
- Edge has no addons
- there is only one inprivate session
- downloads are shared - not separate download lists
- history does not seem to be shared or stored in private

### Safari:

- cookies are not shared between private and non private
- cookies are not shared between private windows, so each private window is effectively a clean browser
- lastpass enabled in private and non-private
- history is not tracked in private sessions, can see history of non-private sessions
- downloads in private session are not tracked, can see downloads from no-private sessions

## Reflect on Incognito Mode Features

Firefox and IE/Edge seem the most limited, so I probably wouldn’t use that very often.

Combining users with incognito in Chrome becomes very powerful because I can have multiple incognito sessions at the same time. But like Safari that would become hard to manage with lots of session windows.

Chrome also has the most flexible Extension mechanism with the ability to switch off, or on, extensions for incognito mode.

Safari has quite an extreme mode. Almost overkill. The reason it becomes hard is simply the tracking between the different sessions, on some apps it will be easy because the screen will tell you the different users they are logged in as, but on the system I used, it was in the URL and the URL isn’t always visible in browsers now.

This is a very simple feature to use, and has immediate application in your testing. I use it all the time.
