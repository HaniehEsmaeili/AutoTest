***Setting***
Library  RequestsLibrary
Library  Collections

***Variables***
${url}    https://gorest.co.in
${uri}    /public/v1/posts/123/comments
${Content_Type}  application/json
${Accept}  application/json


***Keywords***

Creating Session
    Create Session    firstSession    ${url}

Headers & Response
    ${headers}=   Create Dictionary  Content_Type=${Content_Type}   Accept=${Accept}
    ${response}=    Get Request    firstSession    ${uri}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console    ${response.status_code}
    Log To Console    ${response}
    Log To Console    ${response.headers}

Validation Of Status_Code
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal  ${status_code}  200

Validation Of Body
    ${body}=   Convert To String   ${response.content} 
    Should Contain  ${body}   "page":1
    Should Contain  ${body}  "data":[]
