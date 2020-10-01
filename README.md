# A small demo test suite using Robot Framework
This test suite demonstrates using Robotframework to access a demo website. It uses Selenium WebDriver for UI testing.

# To run the test suite locally
Ensure the local environment has the following:

- Browser of choice. The variable in the script defaults to Chrome.
- Locally downloaded and accessible driver for the browser to be used. If using Chrome, then it'll be ChromeDriver which can be sourced from the SeleniumHQ website.
- Python 3+


Using different browsers:
The browser that is used is controlled by ${BROWSER} variable defined in resource.robot resource file. Firefox browser is used by default, but that can be easily overridden from the command line:

robot --variable BROWSER:Firefox Tests/Homepage.robot
robot --variable BROWSER:IE Tests/Homepage.robot


### pip libraries:
- robotframework
- robotframework-seleniumlibrary
