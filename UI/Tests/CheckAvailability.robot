***Settings***
Library  Selenium2Library
Documentation  Cheking Availability of Products in Digikala
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/ResourceOfLogin.robot
Resource  ../Resources/ResourceOfCheckAvailability.robot

Force Tags  Cheking
Test Setup  first operations
Test Teardown  last operations



***Test Cases***
checking availability of products
    [Documentation]  this test verifies availability of products in digikala

    Enter Information
    Checking Validity Of Account
       
    Select Apple In Category
    Scroll Until End Of Products
    Click On Next Page Element
    Select A Unavailable Product
    Select Notice Me Element
    Select Way Of Announcement
    Checking Visibility Of An Element


