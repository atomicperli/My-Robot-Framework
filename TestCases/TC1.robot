*** Settings ***
Library  ../PythonCode/DriverSetup.py
Library  SeleniumLibrary
Resource    Framework.robot
Suite Setup  Initial Suite Setup
Suite Teardown  Close Browsers

*** Variables ***


*** Test Cases ***
Log Test
    Import Variables    ${CURDIR}/../data/${ENV}/TC1.py
    Log To Console  ${login_link}
    Sleep   5
    Capture Page Screenshot


*** Keywords ***

