***Settings***
Library  Selenium2Library

***Variables***


#Configs

${url}  https://www.digikala.com
${browser}  chrome
${speed}  0 second  
${timeout}  60s
${emailText}  hanie.esmaeili.mt@gmail.com
${passwordText}  889900mT
${username}  هانیه اسماعیلی


#LocalVariables

${categoryLocator}  //span[text()='دسته‌بندی کالاها']
${degitalProductsLocator}  //p[text()='کالای دیجیتال']
${appleBrandInDegitalProductsLocator}  //span[text()='اپل']
${splashScreenLocator}  //div[@class='px-14 pt-10 pb-8 bg-000 w-max-content radius-medium border d-flex ai-center jc-center flex-column mx-auto']

    #buying scenario variables
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

    #check availability scenario variables
${sdCardLocator}  //div[text()="کارت حافظه"]
${nextPageBtnLocator}  //span[text()="بعدی"]
${phoneH1TitleLocator}  //h1[text()='گوشی موبایل']/following-sibling::h2
${firstProductInListLocator}  (//h2[@class="ellipsis-2 text-body2-strong color-700"])[1]
${noticeMeBtnLocator}  //div[text()='خبرم کنید']

    #deleting item scenario variables
${mainCartBtnLocator}  //a[@class="pos-relative d-inline-flex py-2 pr-2 pl-0 p-2-lg bg-000 radius"]
${firstItemDeleteBtnLocator}  (//button[@data-cro-id="cart-delete-item-right"])[2]
${emptyBasketImgInEmptyCartPageLocator}  //img[@src="/statics/img/svg/empty-cart.svg"]
${emptyCartText}  سبد خرید شما خالی


