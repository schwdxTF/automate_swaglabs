*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BTN_ADD_TO_CARD_BACKPACK}=    //div[@class='inventory_item']//div[@class='inventory_item_description']//button[@name='add-to-cart-sauce-labs-backpack']
${BTN_CARD_ICON}=    //div[@class='shopping_cart_container']
${CART_LIST}=    //div[@class='cart_list']
${BTN_CHECKOUT}=    //button[@name='checkout']
${INPUT_FIRSTNAME_XPATH_CLIENT}=    //input[@name='firstName']
${INPUT_LASTNAME_XPATH_CLIENT}=    //input[@name='lastName']
${INPUT_ZIPCODE_XPATH_CLIENT}=    //input[@name='postalCode']
${BTN_CONTINUE}=    //input[@name='continue']
${BTN_FINISH}=    //button[@name='finish']
${TEXT_CONFIRM_ORDER}=    //*[contains(text(),'Thank you for your order!') and @class='complete-header']