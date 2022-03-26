***Setting***
Library  RequestsLibrary
Library  Collections


***Variables ***
${url}    https://reqres.in
${uri}    /api/user
${name}  morpheus
${job}  leader
${Content_Type}  application/json
${Accept}  application/json



***Keywords***

Creating Session
    Create Session    secondsession    ${url}

Headers & Response & Body
    ${body}=  Create Dictionary  name=${name}  job=${job}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=    Post Request    secondsession    ${uri}   json=${body}   headers=${headers}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console    ${response.status_code}
    Log To Console    ${response}

Validation Of Status_Code
    ${status_code}=    Convert To string    ${response.status_code}
    Should Be Equal  ${status_code}  201

Validation Of Body
    ${body}=   convert to string   ${response.content} 
    Should Contain  ${body}   "job":"leader"
    Should Contain  ${body}  "name":"morpheus"
