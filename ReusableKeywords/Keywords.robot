*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
LoginToApplication
    click link      xpath://a[@class='ico-login']
    input text      id:Email    Yashwanth
    input text      id:Password     Yashwanth
    click element   xpath://button[@class='button-1 login-button']

Launch Browser
    [Arguments]     ${app_url}  ${app_browser}
    Open Browser    ${app_url}  ${app_browser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]  ${title}
