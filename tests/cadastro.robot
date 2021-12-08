*Settings*
Documentation               Suite de testes do cadastro de personagens

Resource                    ${EXECDIR}/resources/base.robot

Test Setup                  Start Session
Test Teardown               End Session

*Test Cases*
Deve cadastrar um novo personagem
    [Tags]                          happy

    Go To User Form
    Fill User Form                     Mestre Yoda  yoda@jedi.com  Jedi  fevereiro-1970-20  @yoda
    Select Jedi                        Cavaleiro Jedi
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be          Usuário cadastrado com sucesso!


Email incorreto

    [Tags]                          inv_email

    Go To User Form
    Fill User Form                   Darth Vader  vader&hotmail.com  Sith  dezembro-1980-15  @vader
    Check Accept Comunications
    Toaster Message Should Be       Oops! O email é incorreto.