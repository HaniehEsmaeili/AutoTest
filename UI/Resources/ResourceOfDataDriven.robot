***Settings***
Library  Selenium2Library

***Variables***

${categoryLocator}  //span[text()='دسته‌بندی کالاها']
${bookAndArtLocator}   //p[text()='کتاب، لوازم تحریر و هنر']
${magazinesAndMapsLocator}  (//p[contains(@class,'text-body2-strong color-900')])[2]
${magazinesAndMapsLogo}  //img[@alt='مجلات، نقشه و نشانگر کتاب']
${magazinesLocator}  //div[text()='مجلات']
${coverTypeLocator}  //div[@class="text-subtitle-strong d-flex ai-center" and text()='نوع جلد']
${scrollUntil}  (//div[@class="w-full d-flex ai-center jc-start pointer"])[7]
${paperAsTypeLocatore}  //div[text()='کاغذی']
${randomBookLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
${featuresText}  ویژگی‌ها
${coverType:}  //div[@class='d-flex']/following-sibling::p
${paperTypeText}  کاغذی
${internalMagazineTypeLocator}  //div[text()='مجلات داخلی']
${externalMagazineTypeLocator}  //div[text()='مجلات خارجی']



***Keyword***

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
    Page Should Contain  ${paperTypeText}
    Capture Page Screenshot   

