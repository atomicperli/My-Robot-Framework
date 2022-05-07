*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Scroll Actions
    open browser    ${url}  ${browser}
    Maximize Browser Window
    #Scrolls TO coordinates
    Execute Javascript  window.scrollTo(0,200)
    #Scrolls To Bottom
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    #Scrolls to Top
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
    Scroll Element Into View  xpath://
    Close Browser

*** Keywords ***


