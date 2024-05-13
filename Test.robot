*** Settings ***
Library    SeleniumLibrary

*** Test cases ***
Login Test
	Open Browser    https://www.saucedemo.com/    chrome
    Input text    id=user-name    User1
    Sleep    5s