# Gruyere Login With ZAP Proxy

Exercise notes converted from the original FreeMind map. Tool names, behaviour, versions, and download links describe the 2013 demonstration.

- Debrief notes
    - more 'cheat sheet' info in the History list
        - e.g. set cookies
        - GET request clearly visible
    - no web view of the html
    - reepeat requests are listed in history
    - passive security alerts
        - can distract
    - site map shows visited pages
        - no passive link scanning
- [install](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project)
    - [download](http://code.google.com/p/zaproxy/downloads/list)
- run
    - start with batch file
    - tools \\ options
        - local proxy
        - localhost:8080
    - config firefox
    - traffic shown in History
- Test
    - home
        - params tab shows all params used over the session
        - traffic shown in history and sites
        - more info in the history list, I can see what cookies are set, also comments in the files
    - signup
        - GET request clearly visible
        - SetCookies visible
        - Alerts shows passive security alerts as we test
    - sign out
    - repeat request after signout
        - reight click resend
        - shown in history
        - cannot see rendered view of the html
