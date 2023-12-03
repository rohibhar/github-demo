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
    Go To    https://www.amazon.in/
    Maximize Browser Window
Fill up the Login form

    Input Text        id:twotabsearchtextbox        Men Watch
    Sleep    2
    Click Button    xpath://input[@id='nav-search-submit-button']    
    Click Button      xpath://div[@class='s-widget-container s-spacing-small s-widget-container-height-small celwidget slot=MAIN template=SEARCH_RESULTS widgetId=search-results_3']//a[@class='a-link-normal s-no-hover s-underline-text s-underline-link-text s-link-style a-text-normal']
    Close Browser
    #Input Password    xpath://input[@id='loginform-password']     Ridit@123456

    #Click Button      xpath://button[@id='login-button']
    #Sleep    10
    #Click Link        Link:Automation Modules
    #sleep    2    
    #Click Link         Link:ABFC
    ##Sleep    5
    ##Switch Window      NEW
    #Click Link         Link:threat_closed_link
    #sleep    5
    close browser

#Wait until it check and display error message
    #Wait Until Element Is Visible    xpath://p[contains(text(),'Account lockout due to multiple failed login attem')]

#verify error message is correct
    #${result}= Get Text    xpath://p[contains(text(),'Account lockout due to multiple failed login attem')]
    #Should Be Equal As Strings    ${result}    Account lockout due to multiple failed login attempts, Please contact admin

