*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  ${result}=  Run Process  nmap  -p  85  localhost
  Should Contain  ${result.stdout}  open
  
 
