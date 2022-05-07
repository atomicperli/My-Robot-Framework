*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
Multiple Tabs
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element  xpath://
    Switch Window  title=NaBondha
    Close Browser

Multiple Windows
    open browser    ${url}  ${browser}
    Maximize Browser Window

    open browser    https://www.bing.com  ${browser}
    Maximize Browser Window

    Switch Browser  1
    ${title1}=   Get Title

    Switch Browser  2
    ${title2}=   Get Title

    Log To Console  ${title1}
    Log To Console  ${title2}

*** Keywords ***


