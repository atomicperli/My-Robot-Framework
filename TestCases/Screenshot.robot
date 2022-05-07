*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
Navigation
    open browser    ${url}  ${browser}
    Maximize Browser Window
    input text  id:txtUsername  Admin
    Input Text  id:txtPassword  admin123
    # 3rd parameter is optional which is the location where screenshot needs to be stored
    Capture Element Screenshot  xpath://*[@id="divLogo"]/img
    # 2nd parameter is optional which is the location where screenshot needs to be stored
    Capture Page Screenshot
    Close Browser

*** Keywords ***


