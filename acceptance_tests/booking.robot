*** Settings ***
Resource    resource.robot

*** Test Cases ***
Vacation booking without registration
  [Tags]    KAS-28
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
  Log to console    Hi all!

User press “New booking without registration” button at web page
  No Operation

User has made at least one booking
  Get time

Booking is NOT in past
  Get variables

User press Cancel booking button at web page
  No Operation

User select proper booking from list
  Log to console    Hello world!

User is able to cancel her/his booking
  No operation 

User press New booking button at web page
  Get time

User is able to make her/his booking
  No operation

 


