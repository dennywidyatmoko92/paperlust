*** Settings ***
Library    SeleniumLibrary    
Resource    Page/Page_login.resource
Resource    testdata/TD_login.resource
Resource    common/common.resource
Resource    Page/Page_forgot_password.resource
Resource    testdata/TD_forgotpassword.resource
Resource    Page/Page_update_profile.resource
Resource    testdata/TD_update_profile.resource
Resource    Page/Page_Register.resource
Resource    testdata/TD_register.resource
Library    String    
Suite Setup    Start application    
Suite Teardown    close application

*** Test Cases ***

As a user i can't forgot password with invalid email format
    [Tags]    Forgot Password
    click button got it
    click button header login
    click button forgot password
    input field forgot password    ${invalid_format_email}
    click button submit forgot
    verify invalid format email address
    clear field forgot password
As a user i can't forgot password with not registered email
     [Tags]    Forgot Password
    input field forgot password    ${not_registered_email}
    click button submit forgot
    verify email not registered
    clear field forgot password
As a user i can forgot password with valid credential   
     [Tags]    Forgot Password
    input field forgot password    ${valid_email}
    click button submit forgot
    verify email registered
    wait modal forgot disappear     
As a user i can't login with invalid credential
    [Tags]    login
    click button header login
    input username    ${username}
    input password user    ${invalid_password}   
    click login button
    verify incorect password or username
    close pop up
As a user i can login with valid credential
     [Tags]    login
    click button header login
    input username    ${username}
    input password user    ${password_valid}   
    click login button
    verify success login 
    
As a user i can update profile
    [Tags]    Update profile
     ${dataupdateprofile}=    usernamebaru
     Set Global Variable    ${dataupdateprofile}    
    open my account
    click button edit profile
    input first name    ${dataupdateprofile.NAMADEPAN}
    input last name    ${dataupdateprofile.NAMABELAKANG}
    click button update profile
    verify success update profile
    wait pop up success disappear
    click button cancel update profile
    open my account
    Page Should Contain    ${dataupdateprofile.NAMADEPAN}
    Page Should Contain    ${dataupdateprofile.NAMABELAKANG}
    click button logout in my profile
    
    

As a new customer i can't register new account with email already registered
    [Tags]    Register
    ${newaccount}=    registerusernamebaru
    ${newhp}=    Generate Random String    chars=[NUMBERS]    length=9        
    click button register header
    choose radio button customer
    input first name register     ${newaccount.firstname}    
    input last name register    ${newaccount.lastname}   
    input email register    deloonybaloney@gmail.com
    input mobile phone register    085${newhp}     
    input password sign up    ${newaccount.Password}    
    input confirm password sign up    ${newaccount.Password}    
    choose offer
    click button register
    #pop up email already registered
    verify email registered and click button close registerd  

As a new customer i can register new account
    [Tags]    Register
    ${newaccount}=    registerusernamebaru
    ${newhp}=    Generate Random String    chars=[NUMBERS]    length=9        
    click button register header
    choose radio button customer
    input first name register     ${newaccount.firstname}    
    input last name register    ${newaccount.lastname}   
    input email register    ${newaccount.surel}
    input mobile phone register    085${newhp}     
    input password sign up    ${newaccount.Password}    
    input confirm password sign up    ${newaccount.Password}    
    choose offer
    click button register
    verify success login

        
    
    