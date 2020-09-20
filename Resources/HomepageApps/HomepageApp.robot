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

Learn about the company
    Go to About
    sleep  10s
    Click on the "About Us" hidden in Comapny
    sleep  10s