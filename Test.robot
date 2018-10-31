*** Settings ***
Library  Process    
*** Variables ***
${result}=  [0]
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${result}=  Run Process  nmap  -p  80  localhost
  Should Contain  ${result.stdout}  open
  
 
