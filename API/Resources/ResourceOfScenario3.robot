***Setting***
Library  RequestsLibrary
Library  Collections


***Variables ***
${url}    https://reqres.in
${uri}    /api/register
${email}   sydney@fifa
${Content_Type}  application/json
${Accept}  application/json



***Keywords***

Creating Session
    Create Session  thirdSession  ${url}

Headers & Response & Body
    ${body}=  Create Dictionary      email= ${email}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=    Post Request    thirdSession    ${uri}   json=${body}   headers=${headers}
    Set Test Variable  ${response}


Log To Console Variables
    Log To Console    ${response.status_code}
    Log To Console    ${response}

Validation Of Status_Code
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  400
