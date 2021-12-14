*** Settings ***
Library    SeleniumLibrary    
Resource    ../element/element_register.resource
Resource    ../common/common.resource
*** Keywords ***

click button register header
    Wait Until Element Is Visible    ${button_header_sign_up}    ${timeout}    
    Click Element    ${button_header_sign_up}
choose radio button customer
    Wait Until Element Is Visible    ${radio_button_customer}     ${timeout}  
    Click Element     ${radio_button_customer}   
    
choose radio button designer
    Wait Until Element Is Visible    ${radio_button_designer}    ${timeout}  
    Click Element    ${radio_button_designer}   

input first name register
    [Arguments]    ${first_name}
    Wait Until Element Is Visible    ${field_firstname_signup}    ${timeout}
    Input Text    ${field_firstname_signup}    ${first_name}        
input last name register
    [Arguments]    ${last_name}
    Input Text    ${field_lastname_siggup}     ${last_name}    
input mobile phone register
    [Arguments]    ${mobile_phone}
    Input Text    ${field_mobile_phone}      ${mobile_phone}
    

input email register
    [Arguments]    ${surel}
    Input Text    ${field_signup_email}      ${surel}
    
input password sign up
    [Arguments]    ${password}
    Input Text    ${field_password_singup}    ${password}     
input confirm password sign up
    [Arguments]    ${confirm_password}
    Input Text    ${field_confirm_pass_signup}    ${confirm_password}      
choose offer
    Click Element    id=check-subscribe-automail      
click button register
    Click Element    ${button_signup_register}
verify email registered and click button close registerd 
    Wait Until Element Is Visible    ${btn_close_pop_up}    ${timeout}   
    Page Should Contain Element    ${txt_registered}   
    Click Element    ${btn_close_pop_up}
pop up email already registered
    Wait Until Element Is Visible    ${txt_registered}    ${timeout}
    Page Should Contain Element    ${txt_registered}        
        
        
  

   
  
        


        

    
