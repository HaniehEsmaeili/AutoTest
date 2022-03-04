***Settings***
Documentation  Data Driven Test in Digikala
Library  Selenium2Library
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot


Force Tags  DataDriven
Suite Setup  Run Keywords  CommonFunctionallity.first operations
...                        LoginFunctionallity.main operations  
Suite Teardown   CommonFunctionallity.last operations
Test Template  Data Driven Test

***Test Cases***
DataDrivenTest                                          TYPE
Data Driven Test - Internal Magazine         //div[text()='مجلات داخلی']
Data Driven Test - External Magazine         //div[text()='مجلات خارجی']
        

*** Keywords ***

Data Driven Test
    [Arguments]  ${type}
    # ${book}
    Mouse Over  //span[text()='دسته‌بندی کالاها']
    Click Element  //p[text()='کتاب، لوازم تحریر و هنر']


    Wait Until Element Is Visible  //p[text()='مجلات، نقشه و نشانگر کتاب']
    Run Keyword And Ignore Error  Scroll Element Into View  //p[text()='مجلات، نقشه و نشانگر کتاب']
    Wait Until Element Is Enabled  //p[text()='مجلات، نقشه و نشانگر کتاب']
    Click Element  //p[text()='مجلات، نقشه و نشانگر کتاب']

    Wait Until Element Is Visible  //div[text()='مجلات']
    Click Element  //div[text()='مجلات']


    Wait Until Element Is Visible  ${type}
    Click Element  ${type}

    Wait Until Element Is Visible  //div[text()='نوع جلد']
    Run Keyword And Ignore Error  Scroll Element Into View  //div[text()='نوع جلد']
    Wait Until Element Is Enabled  //div[text()='نوع جلد']
    Click Element  //div[text()='نوع جلد']

    Wait Until Element Is Visible  //div[text()='کاغذی']
    Run Keyword And Ignore Error  Scroll Element Into View  //div[text()='کاغذی']
    Wait Until Element Is Enabled  //div[text()='کاغذی']
    Click Element  //div[text()='کاغذی']

    Wait Until Element Is Visible  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
    Run Keyword And Ignore Error  Scroll Element Into View  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
    Wait Until Element Is Enabled  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
    Click Element  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]


    Switch Window  NEW

    Wait Until Page Contains   ویژگی‌ها    timeout=20s
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Page Should Contain  کاغذی
    Capture Page Screenshot   


