13:00
 - a user should be able to register on the system and login using their registration details

Initial Thoughts:
 - A user which does not exist should be created
 - A user which exists should not be able to re-register
 - A user should not be able to login with incorrect password

 - A user which does not exist should be created
eris/eriseris
Eris ErisLastName
eris@mailinator.com

"Your account has been activated. You can now log in. "
System says I am already "logged in as eris" and I am on my account page
http://192.168.1.112/my/account

Bug: Raise this as a minor bug to change the string
Q: Is this localised?

Signout to continue testing

check can login - yes I can

Basic acceptance criteria met - can register, and login

 - A user which exists should not be able to re-register

? is it login name or email which describes this?

Try bothname first:

eris/blueblue
Eris ErisLastName
eris@mailinator.com

Login taken and email taken

Try login:
eris/blueblue
Eris ErisLastName
erisblue@mailinator.com

Login taken

Try Email:
erisonly/onlyonly
Eris ErisLastName
eris@mailinator.com

Email has been taken

Basic acceptance criteria met "can't re-register"
Note: privacy concern about error messages, give away login details

“

	* Email has already been taken

"





