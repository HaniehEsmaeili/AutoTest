***Settings***
Documentation  Test For Deleting Products in Digikala
Library  Selenium2Library

Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Keywords.robot
Resource  ../Resources/Variables.robot

Force Tags  Deleting
Test Setup  first operations
Test Teardown  last operations


***Test Cases***
Deleting Product in Digikala
    [Documentation]  this test verifies deleting products from cart

    Login Operations
    Buying Operations
    Deleting Operations



