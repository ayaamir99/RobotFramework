*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot.resource
Resource  ../resources/locators.robot.resource
*** Test Cases ***
first Login
    Open Parabank Website
    Login With Valid Credentials
Logout and Re-Login Validation
    [Documentation]    Ensure successful logout and login with valid credentials.
     Sleep    5s
    Logout
    Login With Valid Credentials
    Capture Page Screenshot
    close Browser