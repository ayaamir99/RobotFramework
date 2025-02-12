*** Settings ***

*** Keywords ***
do something
    Log    Hello, world!
*** Variables ***
${URL}             https://parabank.parasoft.com/parabank/index.htm?ConnType=JDBC
${BROWSER}         Chrome
${USERNAME_FIELD}  name=username
${PASSWORD_FIELD}  name=password
${LOGIN_BUTTON}    xpath=//input[@value='Log In']
${ERROR_MESSAGE}   The username and password could not be verified.

