*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***
Start application
    Open Browser    ${dev_url}    ${browser}
    Maximize Browser Window
    
close application
    Close Browser

*** Variables ***
${dev_url}    https://dev.paperlust.co/
${sb_url}    https://sandbox.paperlust.co/
${prod_url}    https://paperlust.co/
${timeout}    15
${sleep_timeout}    3
${browser}    chrome   
${headlesschrome}    headlesschrome     