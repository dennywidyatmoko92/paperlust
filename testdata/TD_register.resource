*** Settings ***
Library    String    
Library    FakerLibrary  

*** Variables ***

*** Keywords ***
*** Keywords ***
registerusernamebaru
  ${firstnama}=       FakerLibrary.First Name
  ${lastname}=    FakerLibrary.Last Name
  ${alamat}=    FakerLibrary.Address
  ${email}=    FakerLibrary.Email   
  ${number}=    FakerLibrary.Random Int    min=0    max=1000
  ${hp}=    Generate Random String    9    NUMBERS

  &{registerusernamebaru}=    Create Dictionary
  ...    firstname=${firstnama}
  ...    lastname=${lastname}
  ...    ALAMAT=${alamat}
  ...    surel=${email}
  ...    NOHP=${hp}
  ...    Password=kjkszpj123456
  [Return]    ${registerusernamebaru}  