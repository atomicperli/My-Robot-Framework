*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Dropdowns
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Select From List By Label   Continents  Australia
    Select From List By Index   Continents  0
    Select From List By Value   Continents  AUS
    Unselect From List By Index  Continents     0
    Unselect From List By Label  Continents     Australia
    Unselect From List By Value  Continents     AUS
    Unselect All From List  Continents
    List Selection Should Be    Continents  Australia
    List Should Have No Selections      Continents
    Page Should Contain List  Continents
    Page Should Not Contain List  Continents
    Close Browser

*** Keywords ***


