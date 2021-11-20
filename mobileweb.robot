**** Settings ****
Suite Setup    Open Page
Library    SeleniumLibrary
Library    Collections
Library    AppiumLibrary

**** Test Cases ****
coba
    Log To Console    berhasil    
**** Keywords ****
Open Page
    ${desired_capabilities}=    Create Dictionary
    Set to Dictionary    ${desired_capabilities}    deviceName    MGMRK19109013419
    Set to Dictionary    ${desired_capabilities}    build    test_run
    Set to Dictionary    ${desired_capabilities}    platformName    Android
    Set to Dictionary    ${desired_capabilities}    name    test_name
    Set to Dictionary    ${desired_capabilities}    platformVersion    10.0.0
    Set to Dictionary    ${desired_capabilities}    deviceOrientation     portrait
    Set to Dictionary    ${desired_capabilities}    browserName    chrome
    Set to Dictionary    ${desired_capabilities}    appiumVersion    1.21.0
    #Set to Dictionary    ${desired_capabilities}    deviceType    Android
    ${executor}=    Evaluate          str('http://localhost:4723/wd/hub')
    Create Webdriver    Remote      desired_capabilities=${desired_capabilities}    command_executor=${executor}
    Go To    https://www.google.com