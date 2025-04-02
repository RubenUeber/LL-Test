Documentation       keywords

Library     OperatingSystem


*** Keywords ***
Get Json File 
    [Arguments]     ${file_name}

    ${fixture}      Get File        ${EXECDIR}/tests/../fixtures/${file_name}\
        ${json}         Evaluate    json.loads($fixture)        json

    [return]        ${json}

Given ${keyword}
    Run Keyword  ${keyword}

And ${keyword}
    [Arguments]     ${keyword}
    Log    Realizando mais uma ação para: ${keyword}
   

When ${keyword} 
    Run Keyword  ${keyword} 

And ${keyword}
    [Arguments]     ${keyword}
    Log    Realizando uma segunda ação para: ${keyword}
    # Outra verificação ou ação, como por exemplo:
 
Then ${keyword} 
    Run Keyword  ${keyword}  

###Setup e Teardow

# Postar veredito do Teste
#     Run Keyword If Any Tests Failed     Postar no Teams que o teste falhou
#     Run Keyword If All Tests Passed     Postar no Teams que o teste passou

# Postar no Teams que o teste falhou
#     ${Testes_Falharam}   Get Json File   msg_testes_falharam.json
#     POST    url=https://forms.office.com/formapi/api/6e68e6a6-4d6b-4505-9622-fddaf8cfc755/users/59d68ab9-ade3-45b6-8e61-30d82f5162c9/forms('puZobmtNBUWWIv3a-M_HVbmK1lnjrbZFjmEw2C9RYslUNE8zU0FOMVdRS0JUTkFFOTlHVjVFOE1USC4u')/responses    json=${Testes_Falharam}

# Postar no Teams que o teste passou
#     ${Testes_Passaram}   Get Json File   msg_testes_passaram.json
#     POST    url=https://forms.office.com/formapi/api/6e68e6a6-4d6b-4505-9622-fddaf8cfc755/users/59d68ab9-ade3-45b6-8e61-30d82f5162c9/forms('puZobmtNBUWWIv3a-M_HVbmK1lnjrbZFjmEw2C9RYslUMEIwMVpJRDc3UE9NMjBUOFBFWjRKTEVOMS4u')/responses    json=${Testes_Passaram}

