***Settings ***
Library    RequestsLibrary
Library  Collections


***Variables ***
${url}    https://reqres.in
${uri}    /api/register

***Test Cases ***
POST Email
    Create Session  thirdSession  ${url}
    ${body}=  Create Dictionary      email= sydney@fifa
    ${headers}=  Create Dictionary  Content_Type=application/json  Accept=application/json
    ${response}=    Post Request    thirdSession    ${uri}   json=${body}   headers=${headers}

    Log To Console    ${response.status_code}
    Log To Console    ${response}

#Validations
    ${status_code}=  Convert To String  ${response.status_code}
    Should Be Equal  ${status_code}  400