*** Settings ***
Library    SeleniumLibrary

*** Variables ***
### Login Element ###
${INPUT_USERNAME_XPATH_CLIENT}=    //input[@name='user-name']
${INPUT_PASSWORD_XPATH_CLIENT}=    //input[@name='password']
${BTN_LOGIN_CLIENT}=    //input[@name='login-button']
${SHOW_PRODUCT}=    //div[@class='inventory_list']