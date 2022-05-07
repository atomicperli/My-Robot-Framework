*** Settings ***
#Library     SeleniumLibrary
#Resource    ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
ForLoop1
    FOR   ${i}    IN RANGE    1   10
        Log To Console  ${i}
    END

ForLoop2
    FOR  ${i}    IN  1 2 3 4 5 6 7 8
        Log To Console  ${i}
    END

ForLoop3WithList
    @{items}    Create List  1 2 3 4 5 6 7 8
    FOR     ${i}    IN  @{items}
        Log To Console  ${i}
    END

ForLoop4WithExit
    @{items}    Create List  1 2 3 4 5 6 7 8
    FOR     ${i}    IN      @{items}
        Log To Console  ${i}
        Exit For Loop If    "3"=="${i}"
    END

*** Keywords ***


