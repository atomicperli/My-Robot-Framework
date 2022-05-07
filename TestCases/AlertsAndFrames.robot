*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
Alerts
    open browser    ${url}  ${browser}
    Set Selenium Timeout  10 seconds
    Maximize Browser Window
    Click Element   xpath://button[text()='Click Me']
    Alert Should Be Present  Press a button!
    Handle Alert  dismiss
    Alert Should Not Be Present
    Click Element   xpath://button[text()='Click Me']
    Alert Should Be Present  Press a button!
    Handle Alert  accept
    Alert Should Not Be Present
    Click Element   xpath://button[text()='Click Me']
    Alert Should Be Present  Press a button!
    Handle Alert  leave
    Alert Should Be Present  Press a button!
    Close Browser

Frames
    select Frame    xpath://
    Click Element   xpath://
    Unselect Frame  xpath://
    Frame Should Contain  xpath://  Should Contain Something
    Current Frame Should Contain  Should Contain Something
    Current Frame Should Not Contain  Should Not Contain Something

*** Keywords ***


