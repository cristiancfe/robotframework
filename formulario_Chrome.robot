*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${BROWSER}    chrome
${URL}        https://walkdog.vercel.app/signup

*** Test Cases ***
Preencher Formulário
    Open Browser  ${URL}  ${BROWSER}
    Input Text    name=name    Cristian Eisenhut
    Input Text    name=email   cristianqa@gmail.com
    Input Text    name=cpf     52091197009
    Input Text    name=cep     94810-420
    Click Element  xpath=//input[@type='button' and @value='Buscar CEP']
    Input Text    name=addressNumber    46
    # Adicione aqui mais ações de preenchimento conforme necessário
    Submit Form
    # Ou clique no botão de envio do formulário: Click Element  //button[@class='button-register']
    Sleep    5

    [Teardown]    Close Browser
