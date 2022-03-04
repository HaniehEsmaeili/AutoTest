***Settings***
Documentation  Keywords of Test Scenarioes
Library  Selenium2Library
# Resource  ../Resources/Variables.robot


***Keywords***

Buying Operations

    Mouse Over  ${categoryLocator}
    Mouse Over  ${degitalProductsLocator}
    Click Element  ${appleBrandInDegitalProductsLocator}

    Wait Until Element Is Visible  ${sellerTypeLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${sellerTypeLocator}
    Wait Until Element Is Enabled  ${sellerTypeLocator}
    Click Element  ${sellerTypeLocator}
    
    Wait Until Element Is Visible  ${digikalaAsSellerLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${digikalaAsSellerLocator}
    Wait Until Element Is Enabled  ${digikalaAsSellerLocator}
    Click Element  ${digikalaAsSellerLocator}
    
    Wait Until Element Is Visible  ${brandLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${brandLocator}
    Wait Until Element Is Enabled  ${brandLocator}
    Click Element  ${brandLocator}

    Wait Until Element Is Visible  ${appleAsBrandLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${appleAsBrandLocator}
    Wait Until Element Is Enabled  ${appleAsBrandLocator}
    Click Element  ${appleAsBrandLocator}

    Wait Until Element Is Visible  ${selectrRandomProductLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${selectrRandomProductLocator}
    Wait Until Element Is Enabled  ${selectrRandomProductLocator}
    Click Element  ${selectrRandomProductLocator}


    Switch Window  NEW

    Wait Until Page Contains   ${productTitle}    timeout=20s
    Wait Until Element Is Not Visible  ${splashScreenLocator}    

    Wait Until Element Is Visible  ${addToCartBtnLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${addToCartBtnLocator}
    Wait Until Element Is Enabled  ${addToCartBtnLocator}
    Click Element  ${addToCartBtnLocator}

    Wait Until Element Is Visible  ${cartLocator}
    Click Element  ${cartLocator}


    Switch Window  CURRENT

    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain  ${cartPageContainOneProduct}
    Wait Until Element Is Enabled  ${continueBtnLocator}
    Click Element  ${continueBtnLocator}



    Switch Window  CURRENT

    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain  ${selectTimeBtnLocator}
    Capture Page Screenshot


Check Availability Operations
    
    Mouse Over  ${categoryLocator}
    Mouse Over  ${degitalProductsLocator}
    Click Element  ${appleBrandInDegitalProductsLocator}

    FOR  ${counter}  IN RANGE  0  99 
        
        Wait Until Element Is Visible  ${phoneH1TitleLocator}
        Run Keyword And Ignore Error  Scroll Element Into View  ${phoneH1TitleLocator}
        Wait Until Element Is Enabled  ${phoneH1TitleLocator}    
        
        ${condition} =  Run Keyword And Return Status  Element Should Be Visible  ${nextPageBtnLocator}
        Exit For Loop If  ${condition}
    
    END

        
    Wait Until Element Is Visible  ${phoneH1TitleLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${phoneH1TitleLocator}
    Wait Until Element Is Enabled  ${phoneH1TitleLocator}
    Click Element  ${nextPageBtnLocator}

    Wait Until Element Is Visible  ${firstProductInListLocator}
    Click Element  ${firstProductInListLocator}


    Switch Window  NEW

    Wait Until Element Is Visible  ${noticeMeBtnLocator}
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Click Element  ${noticeMeBtnLocator}
    # Wait Until Element Is Visible  (//p[@class="text-button-2 color-700 pos-relative top-1"])[3]
    # Click Element  (//p[@class="text-button-2 color-700 pos-relative top-1"])[3]
    # Click Button  //button[@class="relative d-flex ai-center user-select-none Button_module_btn__2510bed4 text-button-1 Button_module_btn_Primary__2510bed4 radius-medium w-full w-unset-lg px-10 py-1 text-button-1"]
    # Page Should Contain Element  //div[text()='دیگر لازم نیست خبرم کنید']
    Capture Page Screenshot


Deleting Operations

    Wait Until Element Is Visible  ${mainCartBtnLocator}
    Wait Until Element Is Enabled  ${mainCartBtnLocator}
    Click Element  ${mainCartBtnLocator}
    
    Wait Until Element Is Visible  ${firstItemDeleteBtnLocator}
    Click Element  ${firstItemDeleteBtnLocator}
    Wait Until Element Is Visible  ${emptyBasketImgInEmptyCartPageLocator}
    Page Should Contain  ${emptyCartText}
    Capture Page Screenshot