***Setting***
Documentation  Resource Of Scenarion1
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary

***Variables***
${url}    https://gorest.co.in
${uri}    /public/v1/posts/123/comments
${Content_Type}  application/json
${Accept}  application/json
${expectedStatusCode}  200
${jsonData}  []
${jsonPage}  1

***Keywords***

Creating Session
    Create Session    firstSession    ${url}

Headers & Response
    ${headers}=   Create Dictionary  Content_Type=${Content_Type}   Accept=${Accept}
    ${response}=    Get Request    firstSession    ${uri}
    ${json_response}=  To Json  ${response.content}
    Set Test Variable  ${json_response}
    ${Page}=  Get Value From Json  ${json_response}  $.meta.pagination.page
    ${Data}=  Get Value From Json  ${json_response}  $.data
    Set Test Variable  ${Page}
    Set Test Variable  ${Data}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console    ${response.status_code}
    Log To Console    ${response}
    Log To Console    ${response.headers}

Validation Of Status_Code
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal  ${status_code}  ${expectedStatusCode}

Validation Of Body
    ${strPage}=  Convert To String  ${Page[0]}
    Should Be Equal  ${strPage}  ${jsonPage}
    Should Be Equal  ${Data}  ${jsonData}

