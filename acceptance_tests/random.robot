*** Settings ***
Resource    resource.robot

*** Test Cases ***
Random value from list
    @{Example}=     Create List     KAS-10  KAS-22  KAS-26  KAS-28  KAS-37 KAS-38  KAS-39  KAS-40  KAS-49
    ${value}=   Evaluate    random.sample(${example},4)     random
    Log to console      \nvalue: ${value}