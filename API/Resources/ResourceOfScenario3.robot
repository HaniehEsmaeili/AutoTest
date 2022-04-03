***Setting***
Documentation  Resource Of Scenarion3
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary


***Variables ***
${url}    https://reqres.in
${uri}    /api/register
${Content_Type}  application/json
${Accept}  application/json
${expectedStatusCode}  400



***Keywords***

Creating Session
    Create Session  thirdSession  ${url}

Headers & Response & Body
    ${Info}=  Load JSON From File  ${CURDIR}/Information3.json
    ${Email}=  Get Value From JSON  ${Info}  $.email
    ${body}=  Create Dictionary      email= ${Email[0]}
    Set Test Variable  ${Email}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=    Post Request    thirdSession    ${uri}   json=${body}   headers=${headers}
    Set Test Variable  ${response}
    


Log To Console Variables
    Log To Console  ${Email[0]}
    Log To Console    ${response.status_code}
    Log To Console    ${response}

Validation Of Status_Code
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  ${expectedStatusCode}
