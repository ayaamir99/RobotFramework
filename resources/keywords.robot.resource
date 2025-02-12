*** Settings ***
Library  SeleniumLibrary
Resource  locators.robot
*** Keywords ***
#do something
#    Log    Hello, world!
Open Parabank Website
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible  ${USERNAME_FIELD}  timeout=5s

Enter Invalid Credentials
    Input Text  ${USERNAME_FIELD}  invalidUser
    Input Text  ${PASSWORD_FIELD}  wrongPass
    Click Button  ${LOGIN_BUTTON}

Verify Error Message
    Wait Until Page Contains  ${ERROR_MESSAGE}  timeout=5s