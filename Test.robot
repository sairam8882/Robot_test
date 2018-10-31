*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${result}=  Run Process  nmap  -p  89
  Should Match  ${result.stdout}  open
  
 
