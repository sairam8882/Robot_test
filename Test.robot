*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${result}=  Run Process  netstat  -tlpn | grep 85
  Should Match  ${result.stdout}  LISTEN
  
 
