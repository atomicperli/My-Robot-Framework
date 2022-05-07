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
    #rightClick
    Open Context Menu   xpath://
    #doubeClick
    Double Click Element  xpath://
    #Drag And Drop  Ele1    Ele2
    Drag And Drop  xpath://  xpath://
    Close Browser

*** Keywords ***


