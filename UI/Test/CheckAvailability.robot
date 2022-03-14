***Settings***
Library  Selenium2Library
Documentation  Cheking Availability of Products in Digikala
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot

Force Tags  Cheking
Test Setup  first operations
Test Teardown  last operations



***Test Cases***
checking availability of products
    [Documentation]  this test verifies availability of products in digikala

    Login Operations   
    Check Availability Operations