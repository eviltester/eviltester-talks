13:15

Technical Testing of the registration

DOM level using Developer tools

What does inspect show me?

#user_login 
     has size 25

#user_password 
     has size  25
     at least 8 chars long
#user_password_confirmation
     size 25

#user_firstname
     size 30

#user_lastname
     size 30

#user_mail
   size 30

#user_language
     select


size attribute controls display size - not shown as these sizes on screen must be some CSS

Is this supposed to be max length?

- check if these are supposed to be max length and use inputs longer than these
- email max length is 254 is the accepted limit, src:google search


TEST: 
- All blank - error message for all fields
- All blank but 8 spaces as password - no error message for password (assume it accepts 8 spaces?)
     - All blank - 7 spaces - error about password length
- can other fields be blank? try one space in each

	* Login can't be blank
	* Login is invalid
	* First name can't be blank
	* Last name can't be blank
	* Email can't be blank

- so login has some validation - what is it?
- email has some validation - what is it?

TODO: explore the validation on login and email

From DOM I can input invalid limits
Try this in browser
Try this under the covers and bypass browser

26 letters in the alphabet
abcdefghijklmnopqrstuvwxyz

expand fields to 30 and 35
abcdefghijklmnopqrstuvwxyzabce
abcdefghijklmnopqrstuvwxyzabcefghij

push email to 36
abcd@fghijklmnopqrstuvwxyzabcefg.com

server says
"first name" and "last name" are too long (max is 30) others are accepted - so it looks like size might be supposed to do some length validation

Posssible Bug - use of size instead of maxlength

what other lengths are validated and enforced by server?

login, passwords: 200
abcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefgh

first & last name: 30
abcdefghijklmnopqrstuvwxyzabce

email:200+1+200+4
abcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefgh@abcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefgh.com


	* Login is too long (maximum is 60 characters)
	* Email is too long (maximum is 60 characters)

Bug: email needs to accept 254

haven't found password limit yet

login: 60
abcdefghijklmnopqrstuvwxyzabceabcdefghijklmnopqrstuvwxyzabce

 passwords: 200
abcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefghabcdefgh

first & last name: 30
abcdefghijklmnopqrstuvwxyzabce

email: 26 + 1 + 29 + 4
abcdefghijklmnopqrstuvwxyz@abcdefghijklmnopqrstuvwxyzabc.com

All accepted - I can now login

sign out - login
 accepted


GUI does not prevent me testing longer values - no need to test under the covers

DB
 Columns are inconsistent with these values:

Table: users
Columns:
id int(11) AI PK
login varchar(255)
hashed_password varchar(40)
firstname varchar(30)
lastname varchar(255)
mail varchar(60)
admin tinyint(1)
status int(11)
last_login_on datetime
language varchar(5)
auth_source_id int(11)
created_on datetime
updated_on datetime
type varchar(255)
identity_url varchar(255)
mail_notification varchar(255)
salt varchar(64)
must_change_passwd tinyint(1)


NOTE:
Concerned that hashed_password is smaller than allowable entered password - is password truncated prior to hashing to check?

If so, what is the password limit?

Language is a varchar(5) - there are 2 - 5 char values in the drop down - what if these are exceeded on registration

mrlonglang@mrlonglang
first last
mrlonglang@mailinator.com
language: longlang

Accepted:
"Your account has been activated. You can now log in"

language is displayed as (auto) in the GUI

language is stored as "longl" in the database

BUG: should not be able to create a user with invalid language - no validation performed on this field

Viewing production.log
None of this reported in the log


When the user re-saves the user in the admin interface with (auto) as the language then it is saved to the database with no language.

BUG: Admin interface allows saving a user with no language setting

TODO: if there is no validation on this then it might be a source of sql injection or cross site scripting

BUG: There are 2 anonymous users in the database with no login, etc. (TODO: Could this be exploited as a security risk?)

Note: the passwords are [FILTERED] in the log file - good

TODO: Fuzz the registration with super long strings and see if the JSON processing or validation can be borked

13:57
