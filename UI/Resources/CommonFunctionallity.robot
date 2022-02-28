***Settings***
Library  SeleniumLibrary


***Keywords***
first operations
    Set Selenium Speed  ${speed}
    Set Selenium Timeout  ${timeout}
    Open Browser  ${url}  ${browser} 
    Maximize Browser Window  
    Sleep  2s

last operations
    Sleep  5s
    Close Browser