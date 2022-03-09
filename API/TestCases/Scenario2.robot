***Settings ***
Library    RequestsLibrary
Library  Collections


***Variables ***
${url}    https://reqres.in
${uri}    /api/user

***Test Cases ***
POST On Session
    Create Session    secondsession    ${url}
    ${body}=  Create Dictionary  name=morpheus  job=leader
    ${headers}=  Create Dictionary  Content_Type=application/json  Accept=application/json
    ${response}=    Post Request    secondsession    ${uri}   json=${body}   headers=${headers}
  
    Log To Console    ${response.status_code}
    Log To Console    ${response}


 #Validations
    ${status_code}=    Convert To string    ${response.status_code}
    Should Be Equal  ${status_code}  201


    ${body}=   convert to string   ${response.content} 
    Should Contain  ${body}   "job":"leader"
    Should Contain  ${body}  "name":"morpheus"
