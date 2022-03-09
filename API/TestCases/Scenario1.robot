***Settings ***
Library    RequestsLibrary
Library  Collections


***Variables ***
${url}    https://gorest.co.in
${uri}    /public/v1/posts/123/comments

***Test Cases ***
GET
    Create Session    mysession    ${url}

    ${headers}=   Create Dictionary  Content_Type=application/json   Accept=application/json

    ${response}=    get request    mysession    ${uri}
    Log To Console    ${response.status_code}
    Log To Console    ${response}
    Log To Console    ${response.headers}

# #Validations
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal  ${status_code}  200

    ${body}=   Convert To String   ${response.content} 
    Should Contain  ${body}   "page":1
    Should Contain  ${body}  "data":[]
