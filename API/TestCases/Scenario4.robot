***Settings***
Library  RequestsLibrary
Library  Collections

***Variables***
${url}  https://reqres.in
${uri}  /api/users

***Test Cases ***
Post New user
    Create Session  ForthSession  ${url}
    ${body}=  Create Dictionary  name= morpheus  job=leader  email=morpheus@gmail.com
    ${headers}=  Create Dictionary  Content_Type=application/json  Accept=application/json
    ${response}=  Post Request  ForthSession  ${uri}  json=${body}  headers=${headers}
    
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

#Validation
    ${status_code}=    Convert To string    ${response.status_code}
    should be equal  ${status_code}  201


Put New Info
    Create Session  ForthSession  ${url}
    ${body}=  Create Dictionary  name=david  job=leader  email=david@gmail.com
    ${headers}=  Create Dictionary  Content_Type=application/json  Accept=application/json
    ${response}=  Post Request  ForthSession  ${uri}/329  json=${body}  headers=${headers}
    
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

#Validation
    ${status_code}=    Convert To string    ${response.status_code}
    should be equal  ${status_code}  201

    ${body}=  Convert To String  ${response.content} 
    Should Contain  ${body}  "name":"david"
    Should Contain  ${body}  "email":"david@gmail.com"
    Length Should Be   id  2

