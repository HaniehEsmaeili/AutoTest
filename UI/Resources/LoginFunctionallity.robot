***Settings***
Library  Selenium2Library




***Keywords***
main operations


    Wait Until Element is Visible  //div[@class="d-flex ai-center jc-center relative grow-1" and text()='ورود | ثبت‌نام']
    Click Element   //a[@class="relative d-flex ai-center user-select-none Button_module_btn__2510bed4 text-button-2 Button_module_btn_Medium__2510bed4 Button_module_btn_NeutralOutlined__2510bed4 Button_module_btn_Black__2510bed4 radius-medium whitespace-nowrap shrink-0 ml-2 ml-0-lg"]
    Wait Until Element is Visible  //input[@type='text' and @name='username']
    Input Text  //input[@type='text' and @name='username']  ${emailText}
    Click Element  //div[text()='ورود']
    Wait Until Element is Visible  //input[@name='password']
    Input Text  //input[@name='password']  ${passwordText}
    Click Element   //div[text()='تایید'] 
    Wait Until Element is Visible  //div[@class='pos-relative pointer shrink-0 ml-2 ml-0-lg']
    Press Keys  //div[@class='pos-relative pointer shrink-0 ml-2 ml-0-lg']  [Return]
    Page Should Contain  ${username}
    Capture Page Screenshot
    Press Keys  //div[@class='pos-relative pointer shrink-0 ml-2 ml-0-lg']  [Return]
