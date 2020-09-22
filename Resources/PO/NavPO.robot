*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ABOUT_US} =  //*[text()[contains(.,'About Us')]]
${ABOUT_US_TEXT} =  providing the best and user friendly application to our customers
${ABOUT_US_TOGGLE} =  id=toggleStyle04-headingOne
${COMPANY_DPDWN} =  xpath=//*[@class='arrow-indicator']
${HOME_NAV} =  xpath=//*[@title='home']



*** Keywords ***

Confirm the presence of the "Home" navigation link
    Wait until page contains element  ${HOME_NAV}

Confirm the presence of the "Latest on blogs" header
    Wait until page contains  Latest on blogs

Hold the mouse over the "Company" navigation dropdown
    Mouse Over  ${COMPANY_DPDWN}
    set selenium implicit wait  2s

Click on the "About Us" in the "Company" dropdown
    @{check}  get webelements  ${ABOUT_US}
    Click Element  @{check}[0]

Check for the presence of the "About Us" toggle
    wait until page contains element  ${ABOUT_US_TOGGLE}
