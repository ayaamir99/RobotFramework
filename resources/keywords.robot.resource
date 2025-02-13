*** Settings ***
Library  SeleniumLibrary
Resource  locators.robot.resource
*** Keywords ***
#do something
#    Log    Hello, world!
Open Parabank Website
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
#    Wait Until Element Is Visible  ${USERNAME_FIELD}  timeout=5s

Negative Login
    [Documentation]    Attempts login using invalid credentials.
    Input Text  ${USERNAME_FIELD}  invalidUser
    Input Text  ${PASSWORD_FIELD}  wrongPass
    Click Button  ${LOGIN_BUTTON}

Verify Error Message
    Wait Until Page Contains  ${ERROR_MESSAGE}  timeout=10s

Open Register Page
    [Documentation]    Registers a new user and returns the username and password.
    Click Element    ${REGISTER_LINK}
    Wait Until Element Is Visible    ${FIRST_NAME_FIELD}    timeout=10s
Register New User

    # Generate a random username to ensure uniqueness.

    Input Text    ${FIRST_NAME_FIELD}         John
    Input Text    ${LAST_NAME_FIELD}          Doe
    Input Text    ${ADDRESS_FIELD}            123 Main St
    Input Text    ${CITY_FIELD}               Anytown
    Input Text    ${STATE_FIELD}              CA
    Input Text    ${ZIP_FIELD}                12345
    Input Text    ${PHONE_FIELD}              1234567890
    Input Text    ${SSN_FIELD}                123-45-6789
    Input Text    ${REG_USERNAME_FIELD}       {RANDOM_STRING}
    Input Text    ${REG_PASSWORD_FIELD}       Password123
    Input Text    ${CONFIRM_PASSWORD_FIELD}   Password123
    Click Button  ${REGISTER_BUTTON}
    Wait Until Page Contains    ${WELCOME_MESSAGE}    timeout=10s
    [Return]    {RANDOM_STRING}      Password123

Logout
    [Documentation]    Logs out the current user.
    Click Button  ${LOGOUT_LINK}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    timeout=10s

Login With Valid Credentials
    [Documentation]    Logs in using provided username and password.
#    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button  ${LOGIN_BUTTON}
#    Wait Until Page Contains    ${WELCOME_MESSAGE}    timeout=15s

Open New Savings Account
    [Documentation]    Opens a new savings account using the default funding account.
    Open Browser  ${OPEN_ACCOUNT_LINK}  ${BROWSER}
    Wait Until Element Is Visible    ${ACCOUNT_TYPE_SELECT}    timeout=10s
    Select From List By Value    ${ACCOUNT_TYPE_SELECT}    SAVINGS
    Select From List By Index    ${FUNDING_ACCOUNT_SELECT}    0
    Click Button  ${OPEN_ACCOUNT_BUTTON}
    Wait Until Element Is Visible    ${NEW_ACCOUNT_LINK}    timeout=10s

Get New Account Number
    [Documentation]    Clicks the new account link to view account details.
    Click Element    ${NEW_ACCOUNT_LINK}
    # Verify account details are displayed (e.g., an element with accountId exists).
    Wait Until Page Contains Element    id=accountId    timeout=10s

Request Loan
    [Documentation]    Submits a loan request and verifies approval.
    Click Element    ${REQUEST_LOAN_LINK}
    Wait Until Element Is Visible    ${LOAN_AMOUNT_FIELD}    timeout=10s
    Input Text    ${LOAN_AMOUNT_FIELD}    1000
    Input Text    ${DOWN_PAYMENT_FIELD}   100
    Select From List By Index    ${LOAN_FUNDING_ACCOUNT_SELECT}    0
    Click Button  ${REQUEST_LOAN_BUTTON}
    Wait Until Page Contains    ${LOAN_APPROVAL_MESSAGE}    timeout=10s
