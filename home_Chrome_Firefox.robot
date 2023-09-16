*** Settings ***
Documentation        Suite de testes da pagina principal
Library              SeleniumLibrary

*** Test Cases ***
Webapp WalkDog deve estar online 
    Open Browser              https://walkdog.vercel.app/    browser=chrome
    Open Browser              https://walkdog.vercel.app/    browser=firefox
    Title Should Be           Walkdog by Papito
    Page Should Contain       Cuidado e diversão em cada passo
    
    Sleep   5
    Close Browser

