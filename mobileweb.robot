**** Settings ****
Suite Setup    Open Page
Library    SeleniumLibrary
Library    Collections
Library    AppiumLibrary

**** Test Cases ****
searching
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="dropbtn-login"]    15
    SeleniumLibrary.Click Element    //*[@id="dropbtn-login"]   
    SeleniumLibrary.Wait Until Element Is Visible    xpath=//*[@id="loginForm"]/p[2]/button    15 
    SeleniumLibrary.Input Text    xpath=//*[@id="username"]    dennywidyatmokoasli    
    SeleniumLibrary.Input Text    xpath=//*[@id="password"]    123456
    SeleniumLibrary.Click Element    xpath=//*[@id="loginForm"]/p[2]/button
    SeleniumLibrary.Page Should Contain Element    xpath=//*[@id="site-container"]/div[5]/div/div[2]/div[2]/div/div/ul/div/li[1]/a    
    
             
          
        
    

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
    Go To    https://sebangsa.com/