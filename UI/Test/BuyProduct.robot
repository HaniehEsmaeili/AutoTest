***Settings***
Documentation  Test Buying Product in Digikala
Library  Selenium2Library

Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot

Force Tags  Buying
Test Setup  CommonFunctionallity.first operations
Test Teardown  CommonFunctionallity.last operations


***Test Cases***
Buying Product 
    [Documentation]  this test verifies buying product in digikala
 
    
    # LoginFunctionallity.main operations  
    Buying Operations 


