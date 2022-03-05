***Settings***
Documentation  Data Driven Test in Digikala
Library  Selenium2Library
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot


Force Tags  DataDriven
Suite Setup    CommonFunctionallity.first operations
Suite Teardown   CommonFunctionallity.last operations
Test Template  Data Driven Test

***Test Cases***                                         TYPE
Data Driven Test - Internal Magazine         //div[text()='مجلات داخلی']
Data Driven Test - External Magazine         //div[text()='مجلات خارجی']
        




