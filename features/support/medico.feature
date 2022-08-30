Feature: Medico
  As a medico
  I want to adicionar, remover e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

  Scenario: remover medico
    Given estou na pagina do medico
    And o medico de crm '123456' existe
    When eu clico em remover o medico de crm '123456'
    Then eu vejo uma mensagem que o medico foi apagado com sucesso

  Scenario: adicionar medico
    Given estou na pagina do medico
    And o medico de crm '123456' nao existe
    When eu clico em criar medico, depois de preencher os campos com meus dados
    Then eu vejo uma mensagem que o medico foi adicionado com sucesso