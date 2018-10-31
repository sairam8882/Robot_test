*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  Log to console Run Process  netstat  -tlpn  |  grep 80
  
 
