*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open browser to registration page
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.iltalehti.fi/

*** Test Cases ***
Registration
  [Tags]    KAS-10
  Given User has no account for web page
  And User has not logged in
  When User press New Registration button at web page
  Then User is able to make her/his registration

*** Keywords ***

Open browser to registration page
  Open browser    ${URL}

User has no account for web page
  Set Window position   100    200

User has not logged in
  Set Window size   800    600

User press New Registration button at web page
  Set Selenium Speed    0.5 s

User is able to make her/his registration
  Get Window position
