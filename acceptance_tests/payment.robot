*** Settings ***
Resource    resource.robot
Suite Setup    Open browser to registration page
Suite Teardown    Close Browser

*** Test Cases ***
Payment option with Mobile bank application
  [Tags]    KAS-40
  Given User has account for web page
  And User has logged in with her/his password
  And User has made her/his shopping
  And User has valid Mobile Bank application
  When User press Pay with Mobile Bank application button at web page
  Then User is able to pay with her/his Mobile Bank application

Payment option with Debit card
  [Tags]    KAS-39
  Given User has account for web page
  And User has logged in with her/his password
  And User has made her/his shopping
  And User has valid Debit Card
  When User press Pay with Debit card button at web page
  Then User is able to pay with her/his Debit card

Payment option with Paypal account
  [Tags]    KAS-38
  Given User has account for web page
  And User has logged in with her/his password
  And User has made her/his shopping
  And User has valid Paypal account
  When User press Pay with Paypal button at web page
  Then User is able to pay with her/his Paypal account

Payment option with Credit card
  [Tags]    KAS-37
  Given User has account for web page
  And User has logged in with her/his password
  And User has made her/his shopping
  And User has valid Credit Card
  When User press Pay with Credit card button at web page
  Then User is able to pay with her/his Credit card

*** Keywords ***
 
User has valid Mobile Bank application
  No operation

User press Pay with Mobile Bank application button at web page
  Set Window position   100    200

User is able to pay with her/his Mobile Bank application
  Set selenium timeout    0.1 s

User has valid Debit Card
  No operation

User press Pay with Debit card button at web page
  Click button    debit_card

User is able to pay with her/his Debit card
  Close browser

User has valid Paypal account
  No operation

User press Pay with Paypal button at web page
  No operation

User is able to pay with her/his Paypal account
  Page should contain    Eficode

User has valid Credit Card
  Get Window position

User press Pay with Credit card button at web page
  Click button    credit_card

User is able to pay with her/his Credit card
  No operation

