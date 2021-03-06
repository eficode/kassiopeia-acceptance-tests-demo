*** Settings ***
Resource    resource.robot

*** Test Cases ***
  
Payment option with Mobile bank application
  [Tags]    KAS-40    KAS-245    KAS-264
  Given User has account for web page
  And User has logged in with her/his password
  Random value from list
  And User has made her/his shopping
  And User has valid Mobile Bank application
  When User press Pay with Mobile Bank application button at web page
  Then User is able to pay with her/his Mobile Bank application

Payment option with Debit card
  [Tags]    KAS-39    KAS-241    KAS-264
  Given User has account for web page
  And User has logged in with her/his password
  Random value from list
  And User has made her/his shopping
  And User has valid Debit Card
  When User press Pay with Debit card button at web page
  Then User is able to pay with her/his Debit card

Payment option with Paypal account
  [Tags]    KAS-38    KAS-243    KAS-264
  Given User has account for web page
  And User has logged in with her/his password
  Random value from list
  And User has made her/his shopping
  And User has valid Paypal account
  When User press Pay with Paypal button at web page
  Then User is able to pay with her/his Paypal account

Payment option with Credit card
  [Tags]    KAS-37    KAS-240    KAS-264
  Given User has account for web page
  And User has logged in with her/his password
  Random value from list
  And User has made her/his shopping
  And User has valid Credit Card
  When User press Pay with Credit card button at web page
  Then User is able to pay with her/his Credit card

*** Keywords ***
Random value from list
    @{Example}=     Create List     1  2  3  4  5  6  7  8  9  10 
    ${value}=   Evaluate    random.sample(${example},1)     random
    Log to console      \nvalue: ${value}
    Run keyword if    ${value} < ['7']     User has made her/his shopping   ELSE    none

User has valid Mobile Bank application
  No operation

User press Pay with Mobile Bank application button at web page
  Get variables  

User is able to pay with her/his Mobile Bank application
  Log to console    Hello there!

User has valid Debit Card
  No operation

User press Pay with Debit card button at web page
  Get time

User is able to pay with her/his Debit card
  No operation

User has valid Paypal account
  No operation

User press Pay with Paypal button at web page
  No operation

User is able to pay with her/his Paypal account
  Log variables

User has valid Credit Card
  Get time

User press Pay with Credit card button at web page
  No operation

User is able to pay with her/his Credit card
  No operation

  
