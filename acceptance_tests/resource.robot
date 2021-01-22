*** Settings ***
Library    String
Library    Collections
Library    OperatingSystem

*** Variables ***

*** Keywords ***

User has no account for web page
  No operation

User has account for web page
  Get variables

User has logged in with her/his password
  Random value from list

User has made her/his shopping
  Set LOG Level    INFO

Random value from list
  @{Example}=     Create List     1  2  3  4  5  6  7  8  9  10
  ${value}=   Evaluate    random.sample(${example},1)     random
  Log to console      \nvalue: ${value}
  Run keyword if    ${value} < ['7']     User has made her/his shopping   ELSE    none
