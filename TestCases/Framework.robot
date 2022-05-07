*** Settings ***
Library  SeleniumLibrary
#Variables  ../PythonCode/Variables.py


*** Variables ***


*** Keywords ***

Initial Suite Setup
   Log To Console  Execution Started
   Run Keyword If  '${ENV}' == 'Integration'    Import Variables    ${CURDIR}/../PythonCode/Variables.py
   ...  ELSE IF    '${ENV}' == 'SI'                Import Variables    ${CURDIR}/../PythonCode/Variables2.py
   Log To Console  ${browser}
   Run Keyword If  '${browser}' == 'Chrome'     Open Chrome Browser
   ...  ELSE IF  '${browser}' == 'Firefox'           Open FireFox Browser
   ...  ELSE IF  '${browser}' == 'Edge'              Open Edge Browser
   Go To    ${url}
   LoginToApplication
   #close browser

Login To Application
    click link      ${login_link}
    input text      id:Email    Yashwanth
    input text      id:Password     Yashwanth
    click element   xpath://button[@class='button-1 login-button']


Open Chrome Browser
    ${chrome_options}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --start-maximixed
    ${driver_path}=     DriverSetup.Get Driver Path With Browser     ${browser}
    Log To Console  Creating Webdriver
    Log To Console  ${chrome_options}
    Create Webdriver    Chrome  options=${chrome_options}    executable_path=${driver_path}
    Log To Console  Driver Created


Open FireFox Browser
    ${firefox_options}=    Evaluate    selenium.webdriver.FirefoxOptions()
    Call Method    ${firefox_options}    add_argument    --start-maximixed
    ${driver_path}=     DriverSetup.Get Driver Path With Browser     ${browser}
    Log To Console  Creating Webdriver
    Log To Console  ${firefox_options}
    Create Webdriver    Firefox  options=${firefox_options}    executable_path=${driver_path}
    Log To Console  Driver Created


Open Edge Browser
    ${edge_options}=    Evaluate    selenium.webdriver.EdgeOptions()
    Call Method    ${edge_options}    add_argument    --start-maximixed
    ${driver_path}=     DriverSetup.Get Driver Path With Browser     ${browser}
    Log To Console  Creating Webdriver
    Log To Console  ${edge_options}
    Create Webdriver    Edge  options=${edge_options}    executable_path=${driver_path}
    Log To Console  Driver Created

Close Browsers
    Close All Browsers


