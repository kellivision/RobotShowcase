*** Settings ***
Documentation  A test suite to showcase a test automation run.
              ...  Test automation suite should follow the manual test scripts

Resource  ../Resources/CommonFiles.robot
Resource  ../Resources/HomepageApps/HomepageApp.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

#Copy/paste the line below in the terminal to run test cases
# robot -d results Tests/Homepage.robot


*** Test Cases ***

Test Case 1: Users should be able to access the homepage of the Demo website
    [Documentation]  Test Condition: Frontend Homepage tests
    [Tags]  Frontend Test
    The user is able to use the URL to access the Front End Homepage
    Use the Home nav and a permanent header on the home page to confirm the user is on the homepage

Test Case 2: Users can go to the "About us" section of the Company area before logging in to their account
    [Documentation]  Test Condition: Frontend Homepage tests
    [Tags]  Frontend Test
    The user is able to use the URL to access the Front End Homepage
    Use the Home nav and a permanent header on the home page to confirm the user is on the homepage
    Learn about the company