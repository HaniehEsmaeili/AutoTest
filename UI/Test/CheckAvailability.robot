***Settings***
Library  SeleniumLibrary
Documentation  Cheking Availability of Products in Digikala
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot

Force Tags  Cheking
Test Setup  CommonFunctionallity.first operations
Test Teardown  CommonFunctionallity.last operations



***Test Cases***
checking availability of products
    [Documentation]  this test verifies availability of products in digikala

    LoginFunctionallity.main operations  
    Check Availability Operations