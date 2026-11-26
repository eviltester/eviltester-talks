# REST Testing

Technical Web Testing 101.

[Original PDF](exports/resttesting.pdf)

<!-- Slide 1 -->

## Slide 1 — REST Testing

---

<!-- Slide 2 -->

## Slide 2 — What is “REST”

“REpresentational State Transfer”

---

<!-- Slide 3 -->

## Slide 3 — What is REST?

- API (Application Programming Interface) using HTTP calls where the VERBs dictate the action and the URI the thing to act on
- In theory each call is stateless and cacheable, but not always
- Most people use it to mean an API accessible via HTTP on URLs using JSON or XML as the message and response data

---

<!-- Slide 4 -->

## Slide 4 — REST API

- GUI
- Web Server
- App Server
- Web App
- Rest API

![Original slide 4: REST API](images/rest-testing-slide-04.png)

---

<!-- Slide 5 -->

## Slide 5 — RandomUser.me Example

GET http://api.randomuser.me/?nat=gb&gender=female

- A GET request on randomuser.me API
- We can issue API GET Requests through a browser
- Query parameters specify
- Nationality Great Britain
- Gender Female

---

<!-- Slide 6 -->

## Slide 6 — URI Example

```http
GET http://api.randomuser.me/?nat=gb&gender=female
```

- HTTP Verb
- Scheme/protocol name
- Scheme/Path Separator
- Host Address
- Query String

- Query String starts with `?`
- Each variable is `key=value`
- Query Variables are separated by `&`

See also https://en.wikipedia.org/wiki/Uniform_Resource_Identifier

![Original slide 6: URI Example](images/rest-testing-slide-06.png)

---

<!-- Slide 7 -->

## Slide 7 — Example JSON Response

```http
GET http://api.randomuser.me/?nat=gb&gender=female
```

- JSON — JavaScript Object Notation
- http://www.json.org/

```json
{
  "results": [
    {
      "gender": "female",
      "name": {
        "title": "miss",
        "first": "phoebe",
        "last": "graham"
      },
      "location": {
        "street": "1257 kings road",
        "city": "leicester",
        "state": "county down",
        "postcode": "UX31 2LQ"
      },
      "email": "phoebe.graham@example.com",
      "login": {
        "username": "beautifulbird315",
        "password": "thong",
        "salt": "17RIVsok",
        "md5": "ac41371d469204fac73584a7c39ef7e2",
        "sha1": "18612f6e2e8f2d4d2b94a5adc446e7d854e391f6",
        "sha256": "7821627d118bfe7de53fba4a81766f4ff05cafc8b11d97afa5cbafa8b24f77c0"
      },
      "registered": 1345700664,
      "dob": 769204756,
      "phone": "011 6164 012 5787",
      "cell": "0776-993-939",
      "id": {
        "name": "NINO",
        "value": "RJ 04 74 93 I"
      },
      "picture": {
        "large": "https://randomuser.me/api/portraits/women/92.jpg",
        "medium": "https://randomuser.me/api/portraits/med/women/92.jpg",
        "thumbnail": "https://randomuser.me/api/portraits/thumb/women/92.jpg"
      },
      "nat": "GB"
    }
  ],
  "info": {
    "seed": "38d3dc86583143fc",
    "results": 1,
    "page": 1,
    "version": "1.0"
  }
}
```

---

<!-- Slide 8 -->

## Slide 8 — HTTP References

- URI
- en.wikipedia.org/wiki/Uniform_Resource_Identifier
- HTTP
- en.wikipedia.org/wiki/Hypertext_Transfer_Protocol

---

<!-- Slide 9 -->

## Slide 9 — REST References

- Microsoft API Guidelines
- https://github.com/Microsoft/api-guidelines https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md
    -

- Rest API Tutorial
- http://www.restapitutorial.com/
- Original Dissertation that defines REST
- http://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm
- JSON
- http://www.json.org/

---

<!-- Slide 10 -->

## Slide 10 — Exercise

---

<!-- Slide 11 -->

## Slide 11 — Explore a REST API using a Browser

- https://randomuser.me/documentation
- Make some default API calls by typing http://api.randomuser.me/ into a browser
- Use the documentation and:
- GET 10 random people from Germany
- GET 2 random males from France
- GET name, email and phone number for 25 people
- GET results as a csv list

---

<!-- Slide 12 -->

## Slide 12 — Sample Answers

- GET 10 random people from Germany
    - http://api.randomuser.me/?results=10&nat=DE
- GET 2 random males from France
    - http://api.randomuser.me/?results=2&nat=FR&gender=male
- GET name, email and phone number for 25 people
    - http://api.randomuser.me/?results=25&inc=name,email,phone
- GET results as a csv list
    - http://api.randomuser.me/?results=25&inc=name,email,phone&format=csv

---

<!-- Slide 13 -->

## Slide 13 — REST Client

---

<!-- Slide 14 -->

## Slide 14 — What is a REST Client

- A GUI that will allow us to interact with a REST API
- Easily issue REST API calls with different API Verbs
- There are a lot of RestClients Available

---

<!-- Slide 15 -->

## Slide 15 — PostMan REST Client

- Built on Chrome
- Runs on Windows, Linux, Mac
- Free
- Visit https://www.getpostman.com/ using Chrome Browser
- Install “Chrome App”
- Visit “chrome://apps”
- Run Postman

---

<!-- Slide 16 -->

## Slide 16 — Using Postman

- You can create an account on Postman or use without an account
- Account is Free and allows you to share Postman collections
- Lists of requests and templates for APIs

---

<!-- Slide 17 -->

## Slide 17 — Postman Request and Results

- HTTP VERB
- URI
- Send Request
- Results

![Original slide 17: Postman Request and Results](images/rest-testing-slide-17.png)

---

<!-- Slide 18 -->

## Slide 18 — Exercise: Use Postman

- Repeat the previous exercises with Postman using GET requests on api.randomdata.com
- GET the results in XML
- GET the results in YAML
- GET the results in CSV

---

<!-- Slide 19 -->

## Slide 19 — Answers: Using Postman

- GET 10 random people from Germany
    - http://api.randomuser.me/?results=10&nat=DE
- GET 2 random males from France
    - http://api.randomuser.me/?results=2&nat=FR&gender=male
- GET name, email and phone number for 25 people
    - http://api.randomuser.me/?results=25&inc=name,email,phone
- GET results as a csv list
    - http://api.randomuser.me/?results=25&inc=name,email,phone&format=csv

---

<!-- Slide 20 -->

## Slide 20 — Answers: Using Postman

- Postman tries to format the results for you
- XML and JSON
- Pretty Printed
- Expand/Collapse Sections
    - http://api.randomuser.me/?results=25&inc=name,email,phone&format=yaml
    - http://api.randomuser.me/?results=25&inc=name,email,phone&format=xml
    - http://api.randomuser.me/?results=25&inc=name,email,phone&format=json

---

<!-- Slide 21 -->

## Slide 21 — Postman Lessons Learned

- Gotchas
- Shared Cookies between Chrome sessions
- Shared Proxy Settings between Chrome sessions
- Postman shows you what it 'thinks' it sent – use a proxy to be sure
- Lessons Learned
- I tend to always use Postman through a proxy
    - Sometimes easier to repeat requests that way, fuzz, etc.
    - Easier to see actuals
- Use Postman and collections as request 'templates'

---

<!-- Slide 22 -->

## Slide 22 — Playing RestMud with Postman

- If you access RestMud through Chrome then Postman will use the same user session details
- GET requests, could be same as the browser issues
- GET requests, use `/api/` path
- POST requests use JSON payloads
- e.g. {"verb":"look"}

---

<!-- Slide 23 -->

## Slide 23 — REST API

- GUI
- Web Server
- App Server
- Web App
- Rest API
- Slightly different Request
- Same Verb Processing
- Same Parsing

![Original slide 23: REST API](images/rest-testing-slide-23.png)

---

<!-- Slide 24 -->

## Slide 24 — RestMud API

### GET

```text
http://localhost:4567/api/player/user/<verb>
http://localhost:4567/api/player/user/<verb>/<noun>
```

### POST

```text
http://localhost:4567/api/player/user
```

```json
{"verb":"<verb>"}
```

```json
{"verb":"<verb>","nounphrase":"<noun>"}
```

![Original slide 24: RestMud API](images/rest-testing-slide-24.png)

---

<!-- Slide 25 -->

## Slide 25 — Using RestMud API example

- Demo playing
- Demo building a collection

![Original slide 25: Using RestMud API example](images/rest-testing-slide-25.png)

---

<!-- Slide 26 -->

## Slide 26 — Postman Collections

- Save As
- To create a new collection and save as new request
- Save to overwrite a request
- Import other people's collections
- My api.randomuser.me collection
- `<insert URL here>`

---

<!-- Slide 27 -->

## Slide 27 — Exercise: Use RestMud with Postman

- Use RestMud with Postman
- Try some get requests
- Try using Post requests
- Use the pretty print view for JSON
- Build a RestMud collection to help you play the game

---

<!-- Slide 28 -->

## Slide 28 — Using Postman through a proxy

- Setup Chrome to go through proxy
- Use Postman

---

<!-- Slide 29 -->

## Slide 29 — A Little More REST Theory

HTTP Verbs are used to dictate the type of action in a CRUD model.

| CRUD | HTTP VERB | Description |
|---|---|---|
| Create | POST | Insert Data |
| Read | GET | Retrieve Data |
| Update | PUT | Amend Data |
| Delete | DELETE | Delete Data |

---

<!-- Slide 30 -->

## Slide 30 — A Little More REST Theory

HTTP Return codes let you know if your call was successful or not.

| Code | Description |
|---|---|
| 1xx | Information Message |
| 2xx | Successful Action |
| 3xx | Redirection Response |
| 4xx | Client Error — error in request |
| 5xx | Server Error — error processing request |

https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

---

<!-- Slide 31 -->

## Slide 31 — A Little More REST Theory

HTTP Return codes let you know if your call was successful or not e.g.

| Code | Description |
|---|---|
| 200 | OK |
| 201 | Created e.g. after a POST |
| 204 | No content e.g. after a PUT or DELETE |

etc.

https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

---

<!-- Slide 32 -->

## Slide 32 — A Little More REST Theory

HTTP Return codes let you know if your call was successful or not e.g.

| Code | Description |
|---|---|
| 400 | Bad Request |
| 401 | Unauthorised |
| 403 | Forbidden |
| 404 | Not Found |

etc.

https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

---

<!-- Slide 33 -->

## Slide 33 — A Little More REST Theory

HTTP Return codes let you know if your call was successful or not e.g.

| Code | Description |
|---|---|
| 500 | Internal Server Error |
| 501 | Not Implemented |
| 504 | Gateway Timeout |

etc.

https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

---

<!-- Slide 34 -->

## Slide 34 — Authorisation

- May use an `Authorization` header
- `username:password` Base64 encoded
- e.g.
- username:password
- dXNlcm5hbWU6cGFzc3dvcmQ= Authorization: Basic dXNlcm5hbWU6cGFzc3dvcmQ= https://en.wikipedia.org/wiki/Basic_access_authentication

---

<!-- Slide 35 -->

## Slide 35 — Example Apps with APIs for practice

- Get On Tracks
- Redmine

---

<!-- Slide 36 -->

## Slide 36 — Example: Redmine

- http://www.redmine.org/
- Vms
- https://www.turnkeylinux.org/redmine
- https://bitnami.com/stack/redmine

---

<!-- Slide 37 -->

## Slide 37 — Example: GetOnTracks

- http://www.getontracks.org/
- Recommend use in a VM
- https://bitnami.com/stack/tracks
- https://www.turnkeylinux.org/tracks
