***Settings ***
Documentation  Scenario2
Library    RequestsLibrary
Library  Collections

Resource  ../Resources/ResourceOfScenario2.robot


***Test Cases ***
POST Information

    [Documentation]  Post Information

    Creating Session
    Headers & Response & Body
    Log To Console Variables
    Validation Of Status_Code
    Validation Of Body

