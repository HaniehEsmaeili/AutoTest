***Settings***
Library  Selenium2Library


***Variables***

${categoryLocator}  //span[text()='دسته‌بندی کالاها']
${degitalProductsLocator}  //p[text()='کالای دیجیتال']
${appleBrandInDegitalProductsLocator}  //span[text()='اپل']
${splashScreenLocator}  //div[@class='px-14 pt-10 pb-8 bg-000 w-max-content radius-medium border d-flex ai-center jc-center flex-column mx-auto']
${bestSelling}  (//div[contains(@class,'pointer text-no-wrap')])[1]
${sellerTypeLocator}  //div[text()="نوع فروشنده"]
${digikalaAsSellerLocator}  //div[text()='دیجی‌کالا']
${brandLocator}  //div[text()="برند"]
${appleAsBrandLocator}  //div[text()='اپل' and @class="text-subtitle-strong"]
${selectRandomProductLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[6]
${productTitle}  گوشی موبایل اپل
${addToCartBtnLocator}  //div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
${cartLocator}  //p[text()="سبد خرید"]
${cartPageContainOneProduct}  ۱ کالا
${continueBtnLocator}  //div[text()='ادامه']
${selectTimeBtnLocator}  زمان و نحوه ارسال



***Keyword***

Select Apple In Category
    Mouse Over  ${categoryLocator}
    Mouse Over  ${degitalProductsLocator}
    Click Element  ${appleBrandInDegitalProductsLocator}

Select Best Selling Element
    Wait Until Element Is Visible  ${bestSelling}
    Click Element  ${bestSelling}

Select Seller Type
    Wait Until Element Is Visible  ${sellerTypeLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${sellerTypeLocator}
    Wait Until Element Is Enabled  ${sellerTypeLocator}
    Click Element  ${sellerTypeLocator}
    Wait Until Element Is Visible  ${digikalaAsSellerLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${digikalaAsSellerLocator}
    Wait Until Element Is Enabled  ${digikalaAsSellerLocator}
    Click Element  ${digikalaAsSellerLocator}

Select Apple As Brand
    Wait Until Element Is Visible  ${brandLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${brandLocator}
    Wait Until Element Is Enabled  ${brandLocator}
    Click Element  ${brandLocator}
    Wait Until Element Is Visible  ${appleAsBrandLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${appleAsBrandLocator}
    Wait Until Element Is Enabled  ${appleAsBrandLocator}
    Click Element  ${appleAsBrandLocator}

Select A Random Product
    Wait Until Element Is Visible  ${selectRandomProductLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${selectRandomProductLocator}
    Wait Until Element Is Enabled  ${selectRandomProductLocator}
    Click Element  ${selectRandomProductLocator}

Add Product To Cart
    Switch Window  NEW
    Wait Until Page Contains   ${productTitle}    timeout=20s
    Wait Until Element Is Not Visible  ${splashScreenLocator}    
    Wait Until Element Is Visible  ${addToCartBtnLocator}
    Run Keyword And Ignore Error  Scroll Element Into View  ${addToCartBtnLocator}
    Wait Until Element Is Enabled  ${addToCartBtnLocator}
    Click Element  ${addToCartBtnLocator}
    Wait Until Element Is Visible  ${cartLocator}
    Click Element  ${cartLocator}

Checking Product Was Added To Cart
    Switch Window  CURRENT
    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain  ${cartPageContainOneProduct}

Click On Continue Element
    Wait Until Element Is Enabled  ${continueBtnLocator}
    Click Element  ${continueBtnLocator}
    Switch Window  CURRENT
    Wait Until Element Is Not Visible  ${splashScreenLocator}
    Page Should Contain  ${selectTimeBtnLocator}
    Capture Page Screenshot