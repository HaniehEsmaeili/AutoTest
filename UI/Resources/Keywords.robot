***Settings***
Documentation  Keywords of Test Scenarioes
Library  Selenium2Library
Resource  Variables.robot


***Keywords***

Buying Operations

    Mouse Over  ${categoryLocator}
    Mouse Over  ${degitalProductsLocator}
    Click Element  ${appleBrandInDegitalProductsLocator}

    Wait Until Element Is Visible  ${bestSelling}
    Click Element  ${bestSelling}

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
    Wait Until Element Is Enabled  ${nextPageBtnLocator}
    Click Element  ${nextPageBtnLocator}

    Wait Until Element Is Visible  ${randomProductInListLocator}
    Run Keyword And Ignore Error  Scroll Element Into View   ${randomProductInListLocator}
    Wait Until Element Is Enabled  ${randomProductInListLocator}
    Click Element  ${randomProductInListLocator}


    Switch Window  NEW

    Wait Until Element Is Visible  ${noticeMeBtnLocator}
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Click Element  ${noticeMeBtnLocator}
    Wait Until Element Is Visible  ${individualMessageLocator}
    Click Element  ${individualMessageLocator}
    Click Button  ${registerLocator}
    
    Switch Window  CURRENT 
    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain Element  ${dontNoticeMeBtnLocator}
    Capture Page Screenshot




Deleting Operations

    Wait Until Element Is Visible  ${mainCartBtnLocator}
    Wait Until Element Is Enabled  ${mainCartBtnLocator}
    Click Element  ${mainCartBtnLocator}
    
    Switch Window  CURRENT
    Wait Until Element Is Visible  ${firstItemDeleteBtnLocator}
    Click Element  ${firstItemDeleteBtnLocator}

    Wait Until Element Is Visible  ${emptyBasketImgInEmptyCartPageLocator}
    Page Should Contain Element  ${emptyCartText}
    Capture Page Screenshot


Data Driven Test
    [Arguments]  ${type}
    
    Mouse Over  ${categoryLocator}
    Click Element   ${bookAndArtLocator}

    Wait Until Page Contains Element  ${magazinesAndMapsLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${magazinesAndMapsLocator}
    Wait Until Element Is Enabled  ${magazinesAndMapsLocator}
    Wait Until Element Is Visible  ${magazinesAndMapsLogo}
    Click Element  ${magazinesAndMapsLogo}

    Switch Window  CURRENT
    Wait Until Element Is Visible  ${magazinesLocator}
    Click Element  ${magazinesLocator}

    Switch Window  CURRENT 
    Wait Until Element Is Visible  ${type}
    Click Element  ${type}

    Switch Window  CURRENT
    Wait Until Element Is Visible  ${coverTypeLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${coverTypeLocator}
    Wait Until Element Is Enabled  ${coverTypeLocator}
    Click Element  ${coverTypeLocator}

    Wait Until Element Is Visible  ${scrollUntil}
    Run Keyword And Ignore Error  Scroll Element Into View  ${scrollUntil}
    Wait Until Element Is Enabled  ${scrollUntil}
    Click Element  ${paperAsTypeLocatore}

    Switch Window  CURRENT
    Wait Until Element Is Visible  ${randomBookLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${randomBookLocator}
    Wait Until Element Is Enabled  ${randomBookLocator}
    Click Element  ${randomBookLocator}


    Switch Window  NEW
    
    Wait Until Page Contains   ${featuresText} 
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Page Should Contain  ${paperTypeText}
    Capture Page Screenshot   