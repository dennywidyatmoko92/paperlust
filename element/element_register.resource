*** Settings ***
*** Variables ***
${button_header_sign_up}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[17]/div[1]/div[1]/div[1]
${radio_button_customer}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[17]/div[2]/ul[1]/li[1]/div[1]/form[1]/div[1]/label[1]
${radio_button_designer}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[17]/div[2]/ul[1]/li[1]/div[1]/form[1]/div[1]/label[2]
${field_lastname_siggup}    id=signup-lastname
${field_firstname_signup}    id=signup-firstname
${field_signup_email}    id=signup-email
${field_mobile_phone}    id=signup-mobile
${field_password_singup}    id=signup-password
${field_confirm_pass_signup}    id=signup-confirm-password
${chx_subs_offer}    id=check-subscribe-automail
${button_signup_register}    xpath=//strong[contains(text(),'sign up')]
${txt_registered}    xpath=//h3[contains(text(),'Sign Up')]
${btn_close_pop_up}    xpath=//html[1]/body[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[4]/input[1]