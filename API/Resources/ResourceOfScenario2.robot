***Setting***
Documentation  Resource Of Scenarion2
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary


***Variables ***
${url}    https://reqres.in
${uri}    /api/user
${nameFeature}  morpheus
${jobFeature}  leader
${Content_Type}  application/json
${Accept}  application/json
${expectedStatusCode}  201



***Keywords***

Creating Session
    Create Session    secondsession    ${url}

Headers & Response & Body
    ${Info}=  Load JSON From File  C:/Users/D/Desktop/hani/AutoTest/API/Resources/Information.json
    ${Name}=  Get Value From JSON  ${Info}  $.name
    ${Job}=  Get Value From JSON  ${Info}  $.job
    Set Test Variable  ${Name}
    Set Test Variable  ${Job}
    ${body}=  Create Dictionary  name=${Name[0]}  job=${Job[0]}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=    Post Request    secondsession    ${uri}   json=${body}   headers=${headers}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console    ${response.status_code}
    Log To Console    ${response}
    Log To Console  ${Name[0]}
    Log To Console  ${Job[0]}

Validation Of Status_Code
    ${status_code}=    Convert To string    ${response.status_code}
    Should Be Equal  ${status_code}  ${expectedStatusCode}

Validation Of Body
    ${body}=   To JSON   ${response.content} 
    ${getName}=  Get Value From JSON  ${body}  $.name
    ${getJob}=  Get Value From JSON  ${body}  $.job    
    Should Be Equal  ${getName[0]}   ${nameFeature}
    Should Be Equal  ${getJob[0]}  ${jobFeature}
