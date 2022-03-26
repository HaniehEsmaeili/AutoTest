***Settings***
Library  Selenium2Library


***Variables***

${categoryLocator}  //span[text()='دسته‌بندی کالاها']
${degitalProductsLocator}  //p[text()='کالای دیجیتال']
${appleBrandInDegitalProductsLocator}  //span[text()='اپل']
${splashScreenLocator}  //div[@class='px-14 pt-10 pb-8 bg-000 w-max-content radius-medium border d-flex ai-center jc-center flex-column mx-auto']
${sdCardLocator}  //div[text()="کارت حافظه"]
${nextPageBtnLocator}  //span[text()="بعدی"]
${phoneH1TitleLocator}  //h1[text()='گوشی موبایل']/following-sibling::h2
${randomProductInListLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
${noticeMeBtnLocator}  //div[text()='خبرم کنید']
${individualMessageLocator}  (//p[@class="text-button-2 color-700 pos-relative top-1"])[3]
${registerLocator}  //button[@class="relative d-flex ai-center user-select-none Button_module_btn__2510bed4 text-button-1 Button_module_btn_Primary__2510bed4 radius-medium w-full w-unset-lg px-10 py-1 text-button-1"]
${dontNoticeMeBtnLocator}  //div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div[2]/button[1]/div[2]



***Keyword***

Select Apple In Category
    Mouse Over  ${categoryLocator}
    Mouse Over  ${degitalProductsLocator}
    Click Element  ${appleBrandInDegitalProductsLocator}

Scroll Until End Of Products
    FOR  ${counter}  IN RANGE  0  99 
        
        Wait Until Element Is Visible  ${phoneH1TitleLocator}
        Run Keyword And Ignore Error  Scroll Element Into View  ${phoneH1TitleLocator}
        Wait Until Element Is Enabled  ${phoneH1TitleLocator}    
        
        ${condition} =  Run Keyword And Return Status  Element Should Be Visible  ${nextPageBtnLocator}
        Exit For Loop If  ${condition}
    
    END

Click On Next Page Element
    Wait Until Element Is Visible  ${phoneH1TitleLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${phoneH1TitleLocator}
    Wait Until Element Is Enabled  ${nextPageBtnLocator}
    Click Element  ${nextPageBtnLocator}
    
Select A Unavailable Product
    Wait Until Element Is Visible  ${randomProductInListLocator}
    Run Keyword And Ignore Error  Scroll Element Into View   ${randomProductInListLocator}
    Wait Until Element Is Enabled  ${randomProductInListLocator}
    Click Element  ${randomProductInListLocator}

Select Notice Me Element
    Switch Window  NEW
    Wait Until Element Is Visible  ${noticeMeBtnLocator}
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Click Element  ${noticeMeBtnLocator}

Select Way Of Announcement
    Wait Until Element Is Visible  ${individualMessageLocator}
    Click Element  ${individualMessageLocator}
    Click Button  ${registerLocator}

Checking Visibility Of An Element 
    Switch Window  CURRENT 
    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain Element  ${dontNoticeMeBtnLocator}
    Capture Page Screenshot
