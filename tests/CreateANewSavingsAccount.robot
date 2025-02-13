*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot.resource
Resource  ../resources/locators.robot.resource
*** Test Cases ***
first
    Log    Hello World
Create a New Savings Account
    [Documentation]    Automate creation of a savings account and validate account details.
    Open New Savings Account
    Get New Account Number
    Capture Page Screenshot
