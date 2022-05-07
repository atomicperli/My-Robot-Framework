*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://demo.guru99.com/test/newtours/
${browser}  chrome

*** Test Cases ***
GetAllLinksText
    open browser    ${url}  ${browser}
    #Set Selenium Timeout  10 seconds
    Maximize Browser Window
    Sleep   10
    ${All_links_count}=     Get Element Count   xpath://a
    Log To Console  ${All_links_count}

    @{Link_Items}   Create List
    FOR     ${item}     IN RANGE    1   ${All_links_count}-1
    ${link}=    Get Element Attribute  xpath:(//a)[${item}]     href
    Log To Console  ${link}
    Go To  ${link}
    ${Title}=    Get Title
    Log To Console  ${Title}
    Go Back
    END
    Close Browser

*** Keywords ***


