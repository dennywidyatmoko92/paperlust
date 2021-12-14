*** Settings ***
Library    SeleniumLibrary    
Resource    ../element/element_forgot_password.resource
Resource    ../common/common.resource


*** Keywords ***
click button forgot password
    Wait Until Element Is Visible    ${button_forgot_password}    ${timeout}
    Click Element    ${button_forgot_password} 
    
input field forgot password
    [Arguments]    ${email_forgot}
    Wait Until Element Is Visible    ${field_reset_password}    
    Input Text    ${field_reset_password}    ${email_forgot}
click button submit forgot
    Click Element    ${button_reset_password}    
    
verify invalid format email address
    Wait Until Element Is Visible    ${txt_invalid_format_email_address}    ${timeout}
    Page Should Contain Element    ${txt_invalid_format_email_address}   
    
verify email not registered  
    Wait Until Element Is Visible    ${txt_email_not_registered}    ${timeout}
    Page Should Contain Element    ${txt_email_not_registered}         
 
verify email registered
    Wait Until Element Is Visible    ${txt_email_registered}    ${timeout}
    Page Should Contain Element    ${txt_email_registered}     
    
clear field forgot password
    Clear Element Text    ${field_reset_password}    
    
click button cancel modal forgot password
    Wait Until Element Is Visible    ${button_cancel_forgot}    ${timeout}
    Click Element    ${button_cancel_forgot}    
wait modal forgot disappear
    Wait Until Element Is Not Visible   ${field_reset_password}      ${timeout}    
    
click button cancel
    Click Element    ${button_cancel_forgot}        
        
