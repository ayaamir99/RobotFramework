*** Settings ***
Library  SeleniumLibrary
Resource  locators.robot.resource

*** Keywords ***
do something
    Log    Hello, world!
*** Variables ***
${URL}             https://parabank.parasoft.com/parabank/index.htm?ConnType=JDBC
${BROWSER}         Chrome
${RANDOM_STRING}    ${{"".join(random.choices("ABCDEFGHIJKLMNOPQRSTUVWXYZ", k=5))}}
${username}          ali
${password}          Password123


# Negative  Page Elements
${USERNAME_FIELD}  name=username
${PASSWORD_FIELD}  name=password
${LOGIN_BUTTON}    xpath=//input[@value='Log In']
${ERROR_MESSAGE}   The username and password could not be verified.




# Registration Page Elements
${REGISTER_LINK}           xpath=//a[text()='Register']
${FIRST_NAME_FIELD}        id=customer.firstName
${LAST_NAME_FIELD}         id=customer.lastName
${ADDRESS_FIELD}           id=customer.address.street
${CITY_FIELD}              id=customer.address.city
${STATE_FIELD}             id=customer.address.state
${ZIP_FIELD}               id=customer.address.zipCode
${PHONE_FIELD}             id=customer.phoneNumber
${SSN_FIELD}               id=customer.ssn
${REG_USERNAME_FIELD}      id=customer.username
${REG_PASSWORD_FIELD}      id=customer.password
${CONFIRM_PASSWORD_FIELD}  id=repeatedPassword
${REGISTER_BUTTON}         xpath=//input[@value='Register']
${WELCOME_MESSAGE}   Your account was created successfully. You are now logged in.

# Logout Element
${LOGOUT_LINK}             xpath=//a[normalize-space()='Log Out']

# Open New Account Elements
${OPEN_ACCOUNT_LINK}       https://parabank.parasoft.com/parabank/openaccount.htm
${ACCOUNT_TYPE_SELECT}     id=type
${FUNDING_ACCOUNT_SELECT}  id=fromAccountId
${OPEN_ACCOUNT_BUTTON}     xpath=//input[@value='Open New Account']
${NEW_ACCOUNT_LINK}        xpath=//a[contains(@href, 'accountId')]

# Loan Request Elements
${REQUEST_LOAN_LINK}           xpath=//a[text()='Request Loan']
${LOAN_AMOUNT_FIELD}               id=amount
${DOWN_PAYMENT_FIELD}          id=downPayment
#${LOAN_FUNDING_ACCOUNT_SELECT} id=fromAccountId
${REQUEST_LOAN_BUTTON}         xpath=//input[@value='Apply Now']
${LOAN_APPROVAL_MESSAGE}       Your loan has been approved.
