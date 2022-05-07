*** Settings ***
Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome
${found}    false

*** Test Cases ***
GetAllLinksText
    open browser    ${url}  ${browser}
    Maximize Browser Window
    ${rows}=    Get Element Count   xpath://table[@name='BookTable']//tr
    ${columns}=    Get Element Count   xpath://table[@name='BookTable']//tr[1]//th
    Log To Console  ${rows}
    Log To Console  ${columns}
    FOR     ${row}  IN RANGE   2   ${rows}+1
        FOR     ${column}   IN RANGE   1   ${columns}+1
            ${element_text}=    Get Text  xpath://table[@name='BookTable']//tr[${row}]//td[${column}]
            Log To Console  ${element_text}
            IF  "${element_text}"=="Master In Selenium"
                Log To Console  "The specified text is present ${row} row and ${column} column"
                ${found}    Set Variable  true
                Exit For Loop
            END
        END
        Exit For Loop If  "${found}"=="true"
        Table Column Should Contain  xpath://table[@name='BookTable']   2   Amit
        Table Row Should Contain  xpath://table[@name='BookTable']  2   Learn Selenium
        Table Cell Should Contain  xpath://table[@name='BookTable']     5   1   Master In Selenium
        Table Header Should Contain  xpath://table[@name='BookTable']   BookName
    END
    Close Browser

*** Keywords ***


