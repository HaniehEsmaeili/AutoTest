***Settings***
Library  Selenium2Library
Resource  Variables.robot




***Keywords***
Login Operations

    Wait Until Element is Visible  ${enter/register}
    Click Element   ${enter/register}
    Wait Until Element is Visible  ${usernameTextBox}
    Input Text  ${usernameTextBox}  ${emailText}
    Click Element  ${enter}
    Wait Until Element is Visible  ${passwordTextBox} 
    Input Text  ${passwordTextBox}   ${passwordText}
    Click Element   ${confirm}  
    Wait Until Element is Visible  ${checkAccountInfo}
    Press Keys  ${checkAccountInfo}  [Return]
    Page Should Contain  ${username}
    Capture Page Screenshot
    Press Keys  ${checkAccountInfo}  [Return]
