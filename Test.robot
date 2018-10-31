*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${output}=  Run Process  netstat  -tlpn  |  grep  "80"
  Should Contain  ${output.stdout}  LISTEN
