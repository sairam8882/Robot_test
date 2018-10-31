*** Settings ***
Library  Process    
*** Keywords ***
Open port find
  Run process  netstat  -tlpn  |  grep  "80"

*** Test cases ***
Example2       
  Run Process  netstat  -tlpn
  ${message}=    Server receives binary
    Should be contain    ${message}    binary
  
 
