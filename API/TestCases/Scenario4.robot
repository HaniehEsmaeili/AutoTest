***Settings***
Library  RequestsLibrary
Library  Collections
Library  JSONLibrary
Library  ../Library/GtoJ.py

Resource  ../Resources/ResourceOfScenario4.robot



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

***Test Cases ***

Post New user
    Creating Session
    Log To Console Variables
    Validation Of Status_Code

Put New Information
    Creating New Session
    Validations
    Convert Date
