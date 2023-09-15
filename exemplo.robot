*** Settings ***
Documentation
Library      SeleniumLibrary

*** Test Cases ***
Verificar Mensagem "Example Domain"
    Open Browser     https://www.example.com
    Title Should Be  Example Domain
    Page Should Contain   This domain is for use in illustrative examples in documents
    Close Browser

