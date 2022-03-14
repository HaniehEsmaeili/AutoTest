***Variables***


#Common Variables
${url}  https://www.digikala.com
${browser}  chrome
${speed}  0 second  
${timeout}  60s


#Login Variables
${emailText}  hanie.esmaeili.mt@gmail.com
${passwordText}  889900mT
${username}  هانیه اسماعیلی
${enter/register}  //div[@class="d-flex ai-center jc-center relative grow-1" and text()='ورود | ثبت‌نام']
${usernameTextBox}  //input[@type='text' and @name='username']
${passwordTextBox}  //input[@name='password']
${enter}  //div[text()='ورود']
${confirm}  //div[text()='تایید']
${checkAccountInfo}  //div[@class='pos-relative pointer shrink-0 ml-2 ml-0-lg']


#Local Variables
${categoryLocator}  //span[text()='دسته‌بندی کالاها']
${degitalProductsLocator}  //p[text()='کالای دیجیتال']
${appleBrandInDegitalProductsLocator}  //span[text()='اپل']
${splashScreenLocator}  //div[@class='px-14 pt-10 pb-8 bg-000 w-max-content radius-medium border d-flex ai-center jc-center flex-column mx-auto']

 #Buying Scenario Variables
${bestSelling}  (//div[contains(@class,'pointer text-no-wrap')])[1]
${sellerTypeLocator}  //div[text()="نوع فروشنده"]
${digikalaAsSellerLocator}  //div[text()='دیجی‌کالا']
${brandLocator}  //div[text()="برند"]
${appleAsBrandLocator}  //div[text()='اپل' and @class="text-subtitle-strong"]
${selectrRandomProductLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[5]
${productTitle}  گوشی موبایل اپل
${addToCartBtnLocator}  //div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[8]/div[1]/div[2]/div[3]/button[1]/div[2]
${cartLocator}  //p[text()="سبد خرید"]
${cartPageContainOneProduct}  ۱ کالا
${continueBtnLocator}  //div[text()='ادامه']
${selectTimeBtnLocator}  زمان و نحوه ارسال

#Check Availability Scenario Variables
${sdCardLocator}  //div[text()="کارت حافظه"]
${nextPageBtnLocator}  //span[text()="بعدی"]
${phoneH1TitleLocator}  //h1[text()='گوشی موبایل']/following-sibling::h2
${randomProductInListLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
${noticeMeBtnLocator}  //div[text()='خبرم کنید']
${individualMessageLocator}  (//p[@class="text-button-2 color-700 pos-relative top-1"])[3]
${registerLocator}  //button[@class="relative d-flex ai-center user-select-none Button_module_btn__2510bed4 text-button-1 Button_module_btn_Primary__2510bed4 radius-medium w-full w-unset-lg px-10 py-1 text-button-1"]
${dontNoticeMeBtnLocator}  //div[@id='__next']/div[1]/div[3]/div[3]/div[2]/div[2]/div[2]/div[2]/div[3]/div[1]/div[1]/div[2]/button[1]/div[2]

#Deleting Product Scenario Variables
${mainCartBtnLocator}  //div[contains(@class,'mr-3-lg text-body1-strong')]
${firstItemDeleteBtnLocator}  (//button[@data-cro-id="cart-delete-item-right"])[2]
${emptyBasketImgInEmptyCartPageLocator}  //img[@src="/statics/img/svg/empty-cart.svg"]
${emptyCartText}  (//p[text()='سبد خرید شما خالی است!'])[2]

#Data Driven Scenario Variables
${bookAndArtLocator}   //p[text()='کتاب، لوازم تحریر و هنر']
${magazinesAndMapsLocator}  (//p[contains(@class,'text-body2-strong color-900')])[2]
${magazinesAndMapsLogo}  //img[@alt='مجلات، نقشه و نشانگر کتاب']
${magazinesLocator}  //div[text()='مجلات']
${coverTypeLocator}  //div[text()='نوع جلد']
${scrollUntil}  (//div[@class="w-full d-flex ai-center jc-start pointer"])[7]
${paperAsTypeLocatore}  //div[text()='کاغذی']
${randomBookLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
${featuresText}  ویژگی‌ها
${coverType:}  //div[@class='d-flex']/following-sibling::p
${paperTypeText}  کاغذی
${internalMagazineTypeLocator}  //div[text()='مجلات داخلی']
${externalMagazineTypeLocator}  //div[text()='مجلات خارجی']
