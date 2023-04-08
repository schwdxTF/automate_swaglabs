*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    DateTime
Library    String
Resource    ../Locators/CommonLocator.robot

*** Keywords ***
Go to Client Login Page
    Open Browser    ${URL_SWAG_LABS}    chrome
    Set Window Size    1920    1080
    Sleep    0.5s

Login Swag Labs
    Input Text    ${INPUT_USERNAME_XPATH_CLIENT}    ${USERNAME_CLIENT1}
    Input Text    ${INPUT_PASSWORD_XPATH_CLIENT}    ${PASSWORD_CLIENT}
    Click Element    ${BTN_LOGIN_CLIENT}
    Wait Until Element Is Visible    ${SHOW_PRODUCT}    timeout=20

Select Product and Checkout
    Click Element    ${BTN_ADD_TO_CARD_BACKPACK}
    Click Element    ${BTN_CARD_ICON}
    Wait Until Element Is Visible    ${CART_LIST}
    Click Element    ${BTN_CHECKOUT}
    Input Text    ${INPUT_FIRSTNAME_XPATH_CLIENT}    ${FIRSTNAME_CLIENT1}
    Input Text    ${INPUT_LASTNAME_XPATH_CLIENT}    ${LASTNAME_CLIENT1}
    Input Text    ${INPUT_ZIPCODE_XPATH_CLIENT}    ${ZIP_CODE}
    Click Element    ${BTN_CONTINUE}
    Wait Until Element Is Visible    ${CART_LIST}
    Click Element    ${BTN_FINISH}
    Wait Until Element Is Visible    ${TEXT_CONFIRM_ORDER}