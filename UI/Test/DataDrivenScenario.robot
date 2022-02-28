***Settings***
Documentation  Data Driven Test in Digikala
Library  SeleniumLibrary
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/LoginFunctionallity.robot
Resource  ../Resources/Variables.robot
Resource  ../Resources/Keywords.robot


Force Tags  DataDriven
Suite Setup  Run Keywords  CommonFunctionallity.first operations
...                        LoginFunctionallity.main operations  
Suite Teardown   CommonFunctionallity.last operations
Test Template  Data Driven Test

***Test Cases***                                         TYPE                            BOOK
Data Driven Test - Internal Magazine         //div[text()='مجلات داخلی']    //h2[text()='فصلنامه صنایع و معادن']
Data Driven Test - External Magazine         //div[text()='مجلات خارجی']    //div[@class="grow-1 d-flex flex-column ai-stretch jc-start"]


    


