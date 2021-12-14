*** Settings ***
Library    SeleniumLibrary    
Resource    ../element/Login.resource
Resource    ../element/element_update_profile.resource
Resource    ../common/common.resource
*** Keywords ***
open my account
    Wait Until Element Is Visible    ${button_my_account}    ${timeout}
    Click Element    ${button_my_account}    
click button edit profile
    Wait Until Element Is Visible    ${button_edit_account}    ${timeout}
    Click Element    ${button_edit_account}    
input first name
    [Arguments]    ${first_name}
    Input Text    ${field_first_name}    ${first_name}             
input last name
    [Arguments]    ${last_name}
    Input Text    ${field_last_name}    ${last_name}       
    
input phone number
    [Arguments]    ${phone_number}
    Input Text    ${field_phone}    ${phone_number} 
    
input event date
    [Arguments]    ${event_tanggal}
    Input Text    ${event_date}    ${event_tanggal}
    
click button update profile
    Set Focus To Element    ${event_date} 
    Click Element    ${button_update_profile}      
    
verify success update profile
    Wait Until Element Is Visible    ${pop_up_success_update}    ${timeout}
    Page Should Contain Element    ${pop_up_success_update}         
wait pop up success disappear
    Wait Until Element Is Not Visible    ${pop_up_success_update}    ${timeout}
    Page Should Not Contain    ${pop_up_success_update}  
    
click button cancel update profile
    Click Element    ${btn_cancel_update}           
    
click button logout in my profile
    Wait Until Element Is Visible    ${btn_logout}    ${timeout}
    Click Element    ${btn_logout}    

        


