*** Settings ***
Resource    resource.robot

*** Test Cases ***

Registration
  [Tags]    KAS-10    KAS-188
  Given User has no account for web page
  And User has not logged in
  When User press New Registration button at web page
  Then User is able to make her/his registration

Two factor authentication with mobile
  [Tags]    KAS-49    KAS-188
  Given User has mobile account for 2 Factor authentication
  When User authenticate himself/herself using mobile app
  Then User is authorized to access web services

*** Keywords ***

User has not logged in
  Set log level    INFO

User press New Registration button at web page
  No operation

User has mobile account for 2 Factor authentication
  Log to console    Hello console!

User authenticate himself/herself using mobile app
  No Operation

User is authorized to access web services
  Run keywords    User has no account for web page

User is able to make her/his registration
  Get time