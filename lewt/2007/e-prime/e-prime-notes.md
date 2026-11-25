# ePrime diagnosis

Original LEWT 5 preparation notes and rewriting exercises, 15 December 2007. Original wording and spelling are retained; this is not a transcript.

So about 2 months ago I decided that I would learn to phrase my language in terms of ePrime.

ePrime defined by David Pourtland as "The english language without the verb to be". David Pourtland described ePrime in an GS Bulletin article in 1965.

## Why?

writing/speaking in ePrime makes it impossible to say certain constructs - very often these constructs are the same constructs that we warn testers about using in their defect reports.

So writing defect reports in ePrime should make them more operational .

## Example Defect:

Relation to Diagnosis - this defect reports the situation in terms of an end point and a root cause - values "are" rounded, min val "is" calculated and displayed.

Rewrite the following using ePrime

"When double values *are* entered for all the fields, the values *are* visible as double values but when the user clicks on Calculate button, the values *are* rounded off and a rounded Minimum value *is* calculated and displayed."

## Possible rewrite:

When the user enters floating point values in all the fields, the user can see those values on screen as floating point. But when the user clicks on the calculate button the screen refreshes. The redisplayed values do not get displayed as floating point. The values displayed look, to me, like rounded minimum values.

## Example Test Condition:

If IDs which match the entered partial identifier *are* not found in database: "No matches found for this search criteria" error message *is* displayed. The test data *is* to *be* modified in order to execute the test case.

&lt;what problems can I see with the above text?
- how do I know that no IDs "are not 'found'" what does that mean? How do I set that up?
- how would the user see that error message?
- how "is" the test data to "be" modified?&gt;

When running a search on partial identifiers against a database with no test data IDs, in table X, matching the partial identifier then the user should see the "No matches found for this search criteria" error message displayed on screen. The tester should modify the test data in the database to include partial matching IDs and then re-execute the test case to allow matching to occur.

## Can this be done any other way?

- Strunk and White - elements of style?
- Meta model questions?
- ePrime just one more heuristic technique
