***Settings***
Library  Selenium2Library



***Variables***
${emailText}  hanie.esmaeili.mt@gmail.com
${passwordText}  889900mT
${username}  هانیه اسماعیلی
${enter/register}  //div[@class="d-flex ai-center jc-center relative grow-1" and text()='ورود | ثبت‌نام']
${usernameTextBox}  //input[@type='text' and @name='username']
${passwordTextBox}  //input[@name='password']
${enter}  //div[text()='ورود']
${confirm}  //div[text()='تایید']
${checkAccountInfo}  //div[@class='pos-relative pointer shrink-0 ml-2 ml-0-lg']



***Keywords***

Enter Information
    Wait Until Element is Visible  ${enter/register}
    Click Element   ${enter/register}
    Wait Until Element is Visible  ${usernameTextBox}
    Input Text  ${usernameTextBox}  ${emailText}
    Click Element  ${enter}
    Wait Until Element is Visible  ${passwordTextBox} 
    Input Text  ${passwordTextBox}   ${passwordText}
    Click Element   ${confirm}  

Checking Validity Of Account
    Wait Until Element is Visible  ${checkAccountInfo}
    Press Keys  ${checkAccountInfo}  [Return]
    Page Should Contain  ${username}
    Capture Page Screenshot
    Press Keys  ${checkAccountInfo}  [Return]
