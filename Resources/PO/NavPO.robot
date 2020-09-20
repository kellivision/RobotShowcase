*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_NAV} =  xpath=//*[@title="home"]
${COMPANY_DPDWN} =  xpath=//*[@class="arrow-indicator"]
${ABOUT_US} =  //*[text()[contains(.,'About Us')]]


*** Keywords ***

Confirm the presence of the "Home" navigation link
    Wait until page contains element  ${HOME_NAV}

Confirm the presence of the "Latest on blogs" header
    Wait until page contains  Latest on blogs

Go to About
    Mouse Over  ${COMPANY_DPDWN}

Click on the "About Us" hidden in Comapny
    @{check}  get webelements  ${ABOUT_US}
    Click Element  @{check}[0]