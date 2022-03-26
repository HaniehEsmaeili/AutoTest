***Setting***
Library  RequestsLibrary
Library  Collections
Library  os
Library  JSONLibrary
Library  ../Library/GtoJ.py



***Variables***
${url}  https://reqres.in
${uri}  /api/users
${name}  morpheus
${job}  leader
${email}  morpheus@gmail.com
${Content_Type}  application/json
${Accept}  application/json
${newName}  david
${newEmail}  david@gmail.com



***Keywords***

Creating Session
    Create Session  forthSession  ${url}
    ${body}=  Create Dictionary  name=${name}  job=${job}  email=${email}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=  Post Request  forthSession  ${uri}  json=${body}  headers=${headers}
    Set Test Variable  ${response}

Validation Of Status_Code
    ${status_code}=    Convert To string    ${response.status_code}
    should be equal  ${status_code}  201

Creating New Session
    Create Session  ForthSession  ${url}
    ${body}=  Create Dictionary  name=${newName}  job=${job}  email=${newEmail}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=  Post Request  ForthSession  ${uri}/329  json=${body}  headers=${headers}
    Set Test Variable  ${body}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

Validations
    ${body}=  Convert To String  ${response.content} 
    Set Test Variable  ${body}
    Should Contain  ${body}  "name":"david"
    Should Contain  ${body}  "email":"david@gmail.com"
    Length Should Be   id  2
    

Convert Date
    ${json}=    Convert String to JSON   ${body}
    Set Test Variable  ${json}
    ${createdAt}=    Get value from JSON    ${json}    $.createdAt
    ${stringCreatedAt}=    Convert JSON To String    ${createdAt}
    ${jalaliCreatedAt}=  parseAndConvert  ${stringCreatedAt}
    Log To Console  ${jalaliCreatedAt}

