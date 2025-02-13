# Test Automation for Banking Application

This repository contains automated test scripts for validating key user journeys in the banking application. The tests cover negative login attempts, user registration with auto-login, logout/re-login functionality, savings account creation, and loan request processing.

## Table of Contents

- [Overview](#overview)
- [Test Scenarios](#test-scenarios)
  - [1. Negative Login Test](#1-negative-login-test)
  - [2. User Registration and Login Validation](#2-user-registration-and-login-validation)
  - [3. Logout and Re-Login Validation](#3-logout-and-re-login-validation)
  - [4. Create a New Savings Account](#4-create-a-new-savings-account)
  - [5. Loan Request Validation](#5-loan-request-validation)

- [Setup and Installation](#setup-and-installation)
- [Test Execution](#test-execution)


## Overview

This project automates key test scenarios for the banking application using Selenium WebDriver and Python. The test cases ensure that:

- Invalid login attempts display the correct error message.
- New user registrations are successful and automatically log the user in.
- The logout and subsequent login processes work as expected.
- New savings accounts can be created and their details verified.
- Loan requests are processed correctly and approved based on input parameters.

## Test Scenarios

### 1. Negative Login Test

**Objective:** Validate the error message for an invalid login attempt.

**Steps:**
1. Open the login page.
2. Enter invalid credentials.
3. Click the login button.
4. Validate that the error message is displayed (e.g., "The username and password could not be verified.").
## setup-and-installation
- install python
- install robot framework
- install robot framework-selenium Library
- install pycharm 
## test-execution
robot -d results tests/ParabankNegativeLogin.robot
robot -d results tests/UserRegistrationAndLoginValidation.robot
robot -d results tests/Logout_andRe-LoginValidation.robot
robot -d results tests/CreateANewSavingsAccount.robot
robot -d results tests/LoanRequestValidation.robot

