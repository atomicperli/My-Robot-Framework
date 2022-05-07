*** Settings ***
Library     SeleniumLibrary
Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
TimeoutsAndWaits
    open browser    ${url}  ${browser}
    Maximize Browser Window

    # Wait X number of Seconds between each step
    Set Selenium Speed  2 seconds

    # Implicitly Waits for a Element for X number of Seconds
    Set Selenium Implicit Wait  10 seconds

    # Selenium [Timeout]
    Set Selenium Timeout    10 seconds

    #Sleeps X seconds
    Sleep   5

    # logs to console
    Log To Console  Yashwanth


    Close Browser

*** Keywords ***


