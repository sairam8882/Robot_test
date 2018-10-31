*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${response}=  Run Process  netstat  -tlpn  |  grep 89
  Log To Console    ${response.text}    stream=STDOUT 
 
