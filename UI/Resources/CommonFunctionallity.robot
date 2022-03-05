***Settings***
Library  Selenium2Library
Resource  Variables.robot


***Keywords***
first operations
    Set Selenium Speed  ${speed}
    Set Selenium Timeout  ${timeout}
    Open Browser  ${url}  ${browser} 
    Maximize Browser Window  
    

last operations
    Sleep  3s
    Close Browser