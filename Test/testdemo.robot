*** Settings ***
Documentation    To Validate the Login Form
Library    SeleniumLibrary


*** Test Cases ***

Validate the Login Form
    Open the Browser with URL
    Fill up the Login form

*** Keywords ***
Open the Browser with URL
    Create Webdriver    Firefox
    Go To    https://10.150.151.125/CommonAuth/web/admin/user/login
    Maximize Browser Window
Fill up the Login form

    Input Text        xpath://input[@id='loginform-username']     rohibhar

    Input Password    xpath://input[@id='loginform-password']     Ridit@123456

    Click Button      xpath://button[@id='login-button']
    Sleep    10
    Click Link        Link:Automation Modules
    sleep    2
    Click Link         Link:ABFC
    Sleep    5
    Switch Window      NEW
    close browser

#Wait until it check and display error message
    #Wait Until Element Is Visible    xpath://p[contains(text(),'Account lockout due to multiple failed login attem')]

#verify error message is correct
    #${result}= Get Text    xpath://p[contains(text(),'Account lockout due to multiple failed login attem')]
    #Should Be Equal As Strings    ${result}    Account lockout due to multiple failed login attempts, Please contact admin

