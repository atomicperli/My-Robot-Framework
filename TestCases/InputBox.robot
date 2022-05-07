*** Settings ***
Library     SeleniumLibrary
Resource    ../ReusableKeywords/Keywords.robot
Library  SeleniumLibrary
Resource  ../ReusableKeywords/Keywords.robot

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
InputBoxVerification
    open browser    ${url}  ${browser}
    click link      xpath://a[@class='ico-login']
    ${email_text}  Set Variable  id:Email
    Element Should Be Visible   ${email_text}
    Element Should Be Enabled   ${email_text}
    Input Text  ${email_text}     Yashwanth
    Clear Element Text  ${email_text}
    LoginToApplication
    Sleep  5
    Close Browser

*** Keywords ***


