# Known Good State

*Known good state* is a predefined set of data that guarantees our tests will pass if our methods are correct. Without known good state, code that is functionally correct may fail in a test because it's working on bad data.  

## Example
**Given:**
* Test 1 *asserts* that there are 5 records in the file.
* Test 2 *asserts* that a record can be added to the file.

**Potential Issue:**
* If Test 2 is ran before Test 1, Test 1 will fail even if it is functionally correct because it is operating under a false assumption of the current state of the database: There are *no longer* 5 records in the file.  

## Tags
#software #java #database
