*** Settings ***
Library  SeleniumLibrary

Resource  ../PO/NavPO.robot


*** Variables ***


*** Keywords ***
The user is able to use the URL to access the Front End Homepage
    Go to  https://www.phptravels.net/

Use the Home nav and a permanent header on the home page to confirm the user is on the homepage
    Confirm the presence of the "Home" navigation link
    Confirm the presence of the "Latest on blogs" header

Click on the "About us" navigation link in the Company dropdown
    Hold the mouse over the "Company" navigation dropdown
    Click on the "About Us" in the "Company" dropdown

Confirm the user has been redirected to the "About Us" page
    Check for the presence of the "About Us" toggle