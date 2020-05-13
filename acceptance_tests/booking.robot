*** Settings ***
Resource    resource.robot
Suite Setup    Open browser to registration page
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://www.eficode.com

*** Test Cases ***
Vacation booking without registration
  [Tags]    KAS-40
  Given User has no account for web page
  And User is logged in
  When User press “New booking without registration” button at web page
  Then User is able to make her/his booking

Booking cancellation
  [Tags]    KAS-26
  Given User has account for web page
  And User has logged in with her/his password
  And User has made at least one booking
  And Booking is NOT in past
  When User press Cancel booking button at web page
  And User select proper booking from list
  Then User is able to cancel her/his booking

Vacation booking
  [Tags]    KAS-22
  Given User has account for web page
  And User has logged in with her/his password
  When User press New booking button at web page
  And User select proper booking from list
  Then User is able to make her/his booking

*** Keywords ***
User is logged in
  Get Window position

User press “New booking without registration” button at web page
  No Operation

User has made at least one booking
  Get Window position

Booking is NOT in past
  Set Window position   100    200

User press Cancel booking button at web page
  No Operation

User select proper booking from list
  Get Window position

User is able to cancel her/his booking
  No operation 

User press New booking button at web page
  Set Window size   800    600

User is able to make her/his booking
  No operation

 


