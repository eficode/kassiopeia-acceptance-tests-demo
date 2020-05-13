*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.eficode.com

*** Keywords ***
Open browser to registration page
  Open browser    ${URL}
  
User has no account for web page
  Set Window position   100    200

User has account for web page
  Set Window position   200    300

User has logged in with her/his password
  No operation
