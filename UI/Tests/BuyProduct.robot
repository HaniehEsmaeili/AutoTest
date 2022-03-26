***Settings***
Documentation  Test Buying Product in Digikala
Library  Selenium2Library

Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/ResourceOfLogin.robot
Resource  ../Resources/ResourceOfBuyingProduct.robot

Force Tags  Buying
Test Setup  first operations
Test Teardown  last operations


***Test Cases***
Buying Product 
    [Documentation]  this test verifies buying product in digikala
 
    
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



