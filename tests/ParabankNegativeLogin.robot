*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot.resource
Resource  ../resources/locators.robot.resource
#Suite Setup       Open Parabank Website
#Suite Teardown    Close Browser
*** Test Cases ***
Negative Login Test
    [Tags]    negative
    [Documentation]  This test verifies the error message for an invalid login attempt.
    Open Parabank Website
    Negative Login
    Verify Error Message
    Capture Page Screenshot
    Close Browser

#The test case verifies that the **Parabank** website properly handles and displays error messages
#when a user attempts to log in with invalid credentials. The use of keywords such as `Capture Page Screenshot`
#and `Verify Error Message` indicate that it is focused on both functionality
#and documentation for debugging purposes in failure scenarios.







