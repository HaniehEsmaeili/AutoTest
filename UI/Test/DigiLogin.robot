***Settings***
Documentation  Login Test in Digikala
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot

Force Tags  Login
Test Setup  CommonFunctionallity.first operations
Test Teardown  CommonFunctionallity.last operations



***Test Cases***
Verify Login in Digikala
    [Documentation]  this test verifies login in digikala website

    LoginFunctionallity.Login Operations 

