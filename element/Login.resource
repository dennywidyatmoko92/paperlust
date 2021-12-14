*** Keywords ***


*** Variables ***
${button_login_header}    xpath=//div[contains(text(),'login')]
${field_email}    id=login-email
${field_password}    id=login-password
${button_login}    xpath=//strong[contains(text(),'log in')]
${button_my_account}    xpath=//div[@id='ga-nav-item-account']       
${button_got_it}    xpath=//html/body/div[1]/div[1]/div[2]/div[1]/span
${pop_up_incorrect_usernamepassword}    xpath=//p[contains(text(),'Incorrect user name or password. Please try again.')]
${button_close_popup}    xpath=//body/div[1]/div[1]/div[6]/div[1]/div[1]/div[4]/input[1]


