***Setting***
Documentation  Resource Of Scenarion4
Library  RequestsLibrary
Library  Collections
Library  OperatingSystem
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

Update JSON File
    ${Info}=  Load Json From File  ${CURDIR}/Information.json
    ${Name}=  Get Value From JSON  ${Info}  $.name
    ${Job}=  Get Value From JSON  ${Info}  $.job
    Set Test Variable  ${Job}
    ${Email}=  Get Value From JSON  ${Info}  $.email
    ${JSON}=  Update Value To JSON  ${Info}  $.name  ${updatedName}
    ${JSON}=  Update Value To JSON  ${Info}  $.email  ${updatedEmail}
    ${newName}=  Get Value From Json  ${JSON}  $.name
    Set Test Variable  ${newName}
    ${newEmail}=  Get Value From Json  ${JSON}  $.email
    Set Test Variable  ${newEmail}

Posting Request
    ${body}=  Create Dictionary  name=${newName[0]}  job=${Job[0]}  email=${newEmail[0]}
    ${headers}=  Create Dictionary  Content_Type=${Content_Type}  Accept=${Accept}
    ${response}=  Post Request  forthSession  ${uri}  json=${body}  headers=${headers}
    Set Test Variable  ${response}

Log To Console Variables
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

Validation Of Status_Code
    ${status_code}=    Convert To string    ${response.status_code}
    should be equal  ${status_code}  ${expectedStatusCode}


Validations
    ${body}=  To Json  ${response.content} 
    Set Test Variable  ${body}
    ${getName}=  Get Value From Json  ${body}  $.name
    ${getEmail}=  Get Value From Json  ${body}  $.email
    ${getId}=  Get Value From Json  ${body}  $.id
    Should Be Equal  ${getName[0]}  ${newName[0]}
    Should Be Equal  ${getEmail[0]}  ${newEmail[0]}
    Length Should Be   ${getId[0]}  ${lengthOfId}

Convert Date
    ${json}=  To Json  ${response.content} 
    Set Test Variable  ${json}
    ${createdAt}=    Get value from JSON    ${json}    $.createdAt
    ${stringCreatedAt}=    Convert JSON To String    ${createdAt}
    ${jalaliCreatedAt}=  parseAndConvert  ${stringCreatedAt}
    Log To Console  ${jalaliCreatedAt}





