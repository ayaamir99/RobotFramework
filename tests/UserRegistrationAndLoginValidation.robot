*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot.resource
Resource  ../resources/locators.robot.resource
*** Test Cases ***
first
    Log    Hello World
User Registration and Login Validation
    [Documentation]    Automate user registration and verify automatic login after registration.
    Open Register Page
    ${username}    ${password}=    Register New User
    Capture Page Screenshot
    Login With Valid Credentials
