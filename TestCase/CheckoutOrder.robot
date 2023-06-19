*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/Keywords/ClientKeyword.robot
Resource    ../PageObject/Locators/CommonLocator.robot

*** Test Cases ***
[Func][UI][Client][Login]
    Go to Client Login Page
    Login Swag Labs
    Select Product and Checkout

[Func][UI][Client][Login][Failed]
    Go to Client Login Page
    Login Swag Labs Failed
    Select Product and Checkout