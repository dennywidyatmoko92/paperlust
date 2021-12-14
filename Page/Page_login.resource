*** Settings ***
Library    SeleniumLibrary    
Resource    ../element/Login.resource
Resource    ../testdata/TD_login.resource
Resource    ../common/common.resource

*** Keywords ***

click button got it
    Wait Until Element Is Visible    ${button_got_it}    ${timeout}
    Click Element    ${button_got_it}    

click button header login
    Wait Until Element Is Visible    ${button_login_header}    ${timeout}
    Click Element    ${button_login_header}
input username 
    [Arguments]    ${username}    
    Wait Until Element Is Visible    ${field_email}    ${timeout}
    Input Text    ${field_email}    ${username}    
input password user
    [Arguments]    ${password}
    Input Text    ${field_password}    ${password}    
click login button
    Click Element    ${button_login}   
    
verify success login
    Wait Until Element Is Visible    ${button_my_account}    ${timeout}
    Page Should Contain Element    ${button_my_account}        
verify incorect password or username
    Wait Until Element Is Visible    ${pop_up_incorrect_usernamepassword}    ${timeout}
    Page Should Contain Element    ${pop_up_incorrect_usernamepassword}   
close pop up 
    Wait Until Element Is Visible    ${button_close_popup}    15
    Click Element    ${button_close_popup}        

         

  
        

            
    