***Settings***
Documentation  Test For Deleting Products in Digikala
Library  Selenium2Library

Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/ResourceOfLogin.robot
Resource  ../Resources/ResourceOfDeletingProduct.robot
Resource  ../Resources/ResourceOfBuyingProduct.robot

Force Tags  Deleting
Test Setup  first operations
Test Teardown  last operations


***Test Cases***
Deleting Product in Digikala
    [Documentation]  this test verifies deleting products from cart

    Enter Information
    Checking Validity Of Account 

    Select Apple In Category
    Select Best Selling Element
    Select Seller Type
    Select Apple As Brand
    Select A Random Product
    Add Product To Cart
    Checking Product Was Added To Cart
    Click On Continue Element

    Select Cart Button
    Click Delete Button
    Checking Empty Cart




