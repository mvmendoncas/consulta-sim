Given('entro na pagina do medico') do
  pending redirect_to paciente_url
end

Given('o medico de crm {string} existe') do |string|
  pending find_by_id(cpf)
end

When('eu clico em remover o medico de crm {string}') do |string|
  pending click_button 'Remover'
end

Then('eu vejo uma mensagem que o medico foi apagado com sucesso') do
  pending redirect_to pacientes_url, notice: "Paciente was successfully destroyed."
end

Given('o medico de crm {string} nao existe') do |string|
  pending find_by_id(cpf)
end

When('eu clico em adicionar, depois de preencher os campos com meus dados') do
  pending click_button 'Create Paciente'
end

Then('eu vejo uma mensagem que o medico foi adicionado com sucesso') do
  pending redirect_to paciente_url(@paciente), notice: "Paciente was successfully updated."
end