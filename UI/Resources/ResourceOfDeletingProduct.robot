***Settings***
Library  Selenium2Library


***Variables***

${mainCartBtnLocator}  //div[contains(@class,'mr-3-lg text-body1-strong')]
${firstItemDeleteBtnLocator}  (//button[@data-cro-id="cart-delete-item-right"])[2]
${emptyBasketImgInEmptyCartPageLocator}  //img[@src="/statics/img/svg/empty-cart.svg"]
${emptyCartText}  (//p[text()='سبد خرید شما خالی است!'])[2]



***Keyword***

Select Cart Button
    Wait Until Element Is Visible  ${mainCartBtnLocator}
    Wait Until Element Is Enabled  ${mainCartBtnLocator}
    Click Element  ${mainCartBtnLocator}

Click Delete Button
    Switch Window  CURRENT
    Wait Until Element Is Visible  ${firstItemDeleteBtnLocator}
    Click Element  ${firstItemDeleteBtnLocator}

Checking Empty Cart
    Wait Until Element Is Visible  ${emptyBasketImgInEmptyCartPageLocator}
    Page Should Contain Element  ${emptyCartText}
    Capture Page Screenshot
