## Historical Tracks JMeter Example

- [Original JMeter test plan](tracksJMeterCheck.jmx)
- [Workshop slides](../slides.md)

The test plan demonstrates using JMeter with a Tracks task-management application. It loads the login form, extracts an authenticity token, signs in, and exercises context, project, and feed endpoints.

The file is retained unchanged from the 2010 source archive. Its HTTP Request Defaults point to `192.168.1.82`; change the server and application paths to match your own Tracks installation. The example uses the demo account `user1` with password `user1`. The original application and environment are not bundled.

The thread group specifies 15 users, 10 loops, and a one-second ramp-up. Review those settings before using the plan. The token-extraction expression and application fields reflect the historical Tracks version; compatibility with current Tracks or JMeter releases has not been tested.

The XML structure was checked during migration. No requests were sent to the configured server. The separate single-sample results file is omitted as generated run output.
