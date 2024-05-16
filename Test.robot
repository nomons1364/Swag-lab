*** Settings ***
Library    SeleniumLibrary

*** Test cases ***
Login Test Fail
	Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    user1
    Input text    id=password    password1
    Click Button    id=login-button

Login Test Pass
    Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    standard_user
    Input text    id=password    secret_sauce
    Click Button    id=login-button

Add and Remove to Cart
    Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    standard_user
    Input text    id=password    secret_sauce
    Click Button    id=login-button
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=remove-sauce-labs-backpack

Check Out from Cart
    Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    standard_user
    Input text    id=password    secret_sauce
    Click Button    id=login-button
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Link    xpath=//*[@id="shopping_cart_container"]/a
    Click Button    xpath=//*[@id="checkout"]
    Input Text    xpath=//*[@id="first-name"]    Jeerawat
    Input Text    xpath=//*[@id="last-name"]    Nama
    Input Text    //*[@id="postal-code"]    18000
    Click Button    xpath=//*[@id="continue"]
    Click Button    xpath=//*[@id="finish"]
    Click Button    xpath=//*[@id="back-to-products"]
    
Fliter Test    
    Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    standard_user
    Input text    id=password    secret_sauce
    Click Button    id=login-button
    Select From List By Label    xpath=//*[@id="header_container"]/div[2]/div/span/select    Name (Z to A)
    Select From List By Label    xpath=//*[@id="header_container"]/div[2]/div/span/select    Price (low to high)
    Select From List By Label    xpath=//*[@id="header_container"]/div[2]/div/span/select    Price (high to low)