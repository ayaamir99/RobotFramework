*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot.resource
Resource  ../resources/locators.robot.resource
*** Test Cases ***
first
    Log    Hello World
Loan Request Validation
    [Documentation]    Automate loan request and validate the loan approval details.
    Open New Savings Account
    Request Loan
    Capture Page Screenshot
    Close Browser