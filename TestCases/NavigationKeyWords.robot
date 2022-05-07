*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
Navigation
    open browser    ${url}  ${browser}
    Maximize Browser Window
    ${loc} =    get Location
    Log To Console  ${loc}
    Go To  https://www.bing.com
    ${loc2} =    get Location
    Log To Console  ${loc2}
    Go Back
    ${loc3} =    get Location
    Log To Console  ${loc3}
    Reload Page
    ${loc4} =    get Location
    Log To Console  ${loc4}
    Close Browser

*** Keywords ***


