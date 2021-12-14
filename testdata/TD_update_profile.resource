*** Settings ***
Library    FakerLibrary    
Library    String    

*** Keywords ***
usernamebaru
  ${firstnama}=       FakerLibrary.First Name
  ${lastname}=    FakerLibrary.Last Name
  ${alamat}=    FakerLibrary.Address
  ${email}=    FakerLibrary.Email   
  ${number}=    FakerLibrary.Random Int    min=0    max=1000
  ${hp}=    FakerLibrary.Phone Number

  &{usernamebaru}=    Create Dictionary
  ...    NAMADEPAN=${firstnama}
  ...    NAMABELAKANG=${lastname}
  ...    ALAMAT=${alamat}
  ...    EMAIL=${email}
  ...    NO=${hp}
  [Return]    ${usernamebaru}