***Settings***
Documentation  Data Driven Test in Digikala
Library  Selenium2Library
Resource  ../Resources/CommonFunctionallity.robot
Resource  ../Resources/ResourceOfLogin.robot
Resource  ../Resources/ResourceOfDataDriven.robot


Force Tags  DataDriven
Suite Setup    first operations
Suite Teardown   last operations
Test Template   Data Driven Test   


***Test Cases***                                         TYPE
Data Driven Test - Internal Magazine         ${internalMagazineTypeLocator}
Data Driven Test - External Magazine         ${externalMagazineTypeLocator}
        




