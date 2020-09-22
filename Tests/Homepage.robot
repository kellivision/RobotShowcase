*** Settings ***
Documentation  A small test suite to showcase a test automation run using a demo website.
              ...  Note: an automation suite should always follow the successful run of manual test scripts.

Resource  ../Resources/CommonFiles.robot
Resource  ../Resources/HomepageApps/HomepageApp.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

#Copy/paste the line below in the terminal to run test cases
# robot -d results Tests/Homepage.robot


*** Test Cases ***

Test Case 1: Users should be able to access the homepage of the Demo website
    [Documentation]  Test Condition 1: Frontend Homepage tests
    [Tags]  Frontend Test
    The user is able to use the URL to access the Front End Homepage
    Use the Home nav and a permanent header on the home page to confirm the user is on the homepage

Test Case 2: Users can go to the "About us" section from the "Company" Navigation link
    [Documentation]  Test Condition 1: Frontend Homepage tests
    [Tags]  Frontend Test
    The user is able to use the URL to access the Front End Homepage
    Use the Home nav and a permanent header on the home page to confirm the user is on the homepage
    Click on the "About us" navigation link in the Company dropdown
    Confirm the user has been redirected to the "About us" page