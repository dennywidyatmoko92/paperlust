*** Keywords ***
*** Variables ***
${button_edit_account}    xpath=//div[contains(text(),'edit account')]
${field_first_name}    xpath=//input[@id='first_name']
${field_last_name}    xpath=//input[@id='last_name']
${field_phone}    xpath=//input[@id='phone']
${event_date}    xpath=//input[@id='event']
${button_update_profile}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[15]/div[2]/ul[2]/li[1]/div[1]/div[1]/div[2]/form[2]/button[1]
${pop_up_success_update}    xpath=//div[contains(text(),'Congrats, your profile was updated successfully')]
${btn_cancel_update}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[15]/div[2]/ul[2]/li[1]/div[1]/div[1]/div[2]/form[2]/div[8]
${btn_logout}    xpath=//body/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/nav[1]/ul[1]/li[15]/div[2]/ul[1]/li[6]/div[1]/a[1]/div[1]
