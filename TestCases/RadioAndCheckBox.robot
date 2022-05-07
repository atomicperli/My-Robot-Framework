*** Settings ***
Library     SeleniumLibrary
Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
RadioAndCheckboxVerification
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Select Radio Button  sex    Female
    Select Radio Button  exp    5
    Select Checkbox  BlackTea
    Select Checkbox  RedTea
    Unselect Checkbox  BlackTea
    Click
    #Clicking Checkbox Based on it's state
    ${status}   =   Run Keyword And Return Status   Checkbox Should Not Be Selected  BlackTea
    Run Keyword If  ${status}   Select Checkbox  BlackTea

    Close Browser

*** Keywords ***


