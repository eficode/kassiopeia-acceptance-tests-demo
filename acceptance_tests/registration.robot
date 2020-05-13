*** Settings ***
Resource    resource.robot
Suite Setup    Open browser to registration page
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.eficode.com

*** Test Cases ***
Registration
  [Tags]    KAS-10
  Given User has no account for web page
  And User has not logged in
  When User press New Registration button at web page
  Then User is able to make her/his registration

Two factor authentication with mobile
  [Tags]    KAS-49
  Given User has mobile account for 2 Factor authentication
  When User authenticate himself/herself using mobile app
  Then User is authorized to access web services

*** Keywords ***

User has not logged in
  Set Window size   800    600

User press New Registration button at web page
  Set Selenium Speed    0.5 s

User is able to make her/his registration
  Get Window position

User has mobile account for 2 Factor authentication
  Set Window position   100    200

User authenticate himself/herself using mobile app
  No Operation

User is authorized to access web services
  Run keywords    User has no account for web page
