*Settings*
Documentation               Suite de testes do cadastro de personagens

Library                     ${EXECDIR}/resources/factories/users.py

Resource                    ${EXECDIR}/resources/base.robot

Test Setup                  Start Session
Test Teardown               End Session

*Test Cases*
Deve cadastrar um novo personagem
    [Tags]                          happy
                                    #Aqui ele puxa o factory_yoda do users.py já com a tipagem
    ${user}                         Factory Yoda

    Go To User Form
    Fill User Form                     ${user}
    Select Jedi                        ${user}[tpjedi]
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be          Usuário cadastrado com sucesso!
    Go To Home Page
    User Should Be Visible  ${user}


Email incorreto

    [Tags]                          inv_email
                                    #Aqui ele puxa o factory_darth_vader do users.py já com a tipagem
    ${user}                         Factory Darth Vader

    Go To User Form
    Fill User Form                      ${user}
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be       Oops! O email é invalido.