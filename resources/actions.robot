*Settings*

Documentation           Ações customizadas do Yodapp

*Keywords*
Go To User Form

    Click                           text=Novo

    #Checkpoint (é essa tela msm?!)
    Wait For Elements State         css=.card-header-title >> text=Cadastrar novo usuário
    ...                             visible     5

Fill User Form
    [Arguments]                     ${name}     ${email}    ${ordem}    ${bdate}    ${instagram}

     # Quando eu preencho esse formulário com os dados do Mestre Yoda
    Fill Text                       css=.input[name="nome"]     ${name}
    Fill Text                       css=.input[name="email"]     ${email}
    
    Select Options By               css=.ordem select                   text           ${ordem}
    

    Select Birth Date               ${bdate}

    Fill Text                       id=insta                            ${instagram}

Select Jedi
    [Arguments]                     ${tpjedi}

    Click                           //input[@value="${tpjedi}"]/..//span[@class="check"]

Check Accept Comunications

    Click                           xpath=//input[@name="comunications"]/../span[@class="check"]

Select Birth Date
    [Arguments]                     ${text_date}

    @{date}                         Split String                    ${text_date}        -

    Click                           css=.input[name="Data de nascimento"]

    Select Options By               xpath=(//header[@class="datepicker-header"]//select)[1]
    ...                             text            ${date}[0]

    Select Options By               xpath=(//header[@class="datepicker-header"]//select)[2]
    ...                             text            ${date}[1]

    Click                           xpath=//a[contains(@class, "datepicker-cell")]//span[text()="${date}[2]"]

Submit User Form

    Click                           css=button >> text=Cadastrar

Toaster Message Should Be
    [Arguments]                     ${expected_message}

    Wait For Elements State          css=.toast div >> text=${expected_message}
    ...                              visible    5