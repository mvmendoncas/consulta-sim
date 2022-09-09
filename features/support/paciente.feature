Feature: Paciente
  As a paciente
  I want to adicionar, remover e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial

  Scenario: remover paciente
    Given entro na pagina do paciente
    And o paciente de cpf '12345678901' existe
    When eu clico em remover o paciente de cpf '12345678901'
    Then eu vejo uma mensagem que o paciente foi apagado com sucesso

  Scenario: adicionar paciente
    Given estou na pagina do paciente
    And o paciente de crm '123456' nao existe
    When eu clico em criar paciente, depois de preencher os campos com meus dados
    Then eu vejo uma mensagem que o paciente foi adicionado com sucesso