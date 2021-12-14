*** Keywords ***
*** Variables ***
${button_forgot_password}    xpath=//a[contains(text(),'Forgot your password?')]
${field_reset_password}    id=reset-password-email
${button_reset_password}    name=btn-reset
${txt_invalid_format_email_address}    xpath=//div[contains(text(),'Please check your email address')]
${txt_email_not_registered}    xpath=//div[contains(text(),'Sorry, account with this email is not found')]    
${txt_email_registered}    xpath=//div[contains(text(),'Please check your email to retrieve your new passw')]
${button_cancel_forgot}    xpath=//body/div[1]/div[1]/div[7]/div[1]/div[1]/div[3]/div[1]