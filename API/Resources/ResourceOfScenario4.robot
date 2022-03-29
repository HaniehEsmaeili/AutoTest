***Setting***
Documentation  Resource Of Scenarion4
Library  RequestsLibrary
Library  Collections
Library  os
Library  JSONLibrary
Library  ../Library/GtoJ.py



***Variables***
${url}  https://reqres.in
${uri}  /api/users
${Content_Type}  application/json
${Accept}  application/json
${expectedStatusCode}  201
${updatedName}  david
${updatedEmail}  david@gmail.com
${lengthOfId}  3




***Keywords***

Creating Session
    Create Session  forthSession  ${url}
    ${Info}=  Load JSON From File  C:/Users/D/Desktop/hani/AutoTest/API/Resources/Information.json
    ${Name}=  Get Value From JSON  ${Info}  $.name
    ${Job}=  Get Value From JSON  ${Info}  $.job
    Set Test Variable  ${Job}
    ${Email}=  Get Value From JSON  ${Info}  $.email
    ${body}=  Create Dictionary  name=${Name[0]}  job=${Job[0]}  email=${Email[0]}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=  Post Request  forthSession  ${uri}  json=${body}  headers=${headers}
    Set Test Variable  ${response}

Validation Of Status_Code
    ${status_code}=    Convert To string    ${response.status_code}
    should be equal  ${status_code}  ${expectedStatusCode}

Update Information
    ${NewInfo}=  Load JSON From File   C:/Users/D/Desktop/hani/AutoTest/API/Resources/NewInfo.json
    ${NewName}=  Get Value From JSON   ${NewInfo}   $.name
    ${NewEmail}=  Get Value From JSON  ${NewInfo}  $.email
    ${body}=  Create Dictionary  name=${NewName[0]}  job=${Job[0]}  email=${NewEmail[0]}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=  Post Request  ForthSession  ${uri}  json=${body}  headers=${headers}
    Set Test Variable  ${body}
    Set Test Variable  ${response}
    Set Test Variable  ${NewName}
    Set Test Variable  ${NewEmail}
    Set Test Variable  ${NewInfo}

Log To Console Variables
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

Validations
    ${body}=  To Json  ${response.content} 
    Set Test Variable  ${body}
    ${getName}=  Get Value From Json  ${body}  $.name
    ${getEmail}=  Get Value From Json  ${body}  $.email
    ${getId}=  Get Value From Json  ${body}  $.id
    Should Be Equal  ${getName[0]}  ${updatedName}
    Should Be Equal  ${getEmail[0]}  ${updatedEmail}
    Length Should Be   ${getId[0]}  ${lengthOfId}
    

Convert Date
    ${json}=  To Json  ${response.content} 
    Set Test Variable  ${json}
    ${createdAt}=    Get value from JSON    ${json}    $.createdAt
    ${stringCreatedAt}=    Convert JSON To String    ${createdAt}
    ${jalaliCreatedAt}=  parseAndConvert  ${stringCreatedAt}
    Log To Console  ${jalaliCreatedAt}

