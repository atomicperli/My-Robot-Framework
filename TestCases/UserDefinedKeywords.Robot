*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot
Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
Navigation
    ${Page_Title}=  Launch Browser  ${url}  ${browser}
    Log To Console  ${Page_Title}
    Maximize Browser Window
    Close Browser

*** Keywords ***


