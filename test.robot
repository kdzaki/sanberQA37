*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${url}    http://barru.pythonanywhere.com/daftar
${email}  tester@jagoqa.com
${pass}   testerjago

*** Keywords ***
Open page
    Open Browser    ${url}    chrome

Sign in
    Click Button    id=signin_login

Input user data
    Input Text    id=email       ${email}
    Input Text    id=password    ${pass}

Input random email
    Input Text    id=email    "randomemail@sanberqa.com"
    Input Text    id=password    ${pass}

Input random password
    Input Text    id=email    ${email}
    Input Text    id=password    "randompass"

Close page
    Close Browser

*** Test Cases ***
Sign in success
    Open page
    Input user data
    Sign in
    Close page

Sign in empty data
    Open page
    Sign in
    Close page

Sign in wrong email
    Open page
    Input random email
    Sign in
    Close page

Sign in wrong password
    Open page
    Input random password
    Sign in
    Close page
    