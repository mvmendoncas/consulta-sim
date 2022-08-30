Given('estou na pagina do medico') do
  pending :action => "show", :controller => "medicos"
end

Given('o medico de crm {string} existe') do |string|
  pending find_by_id(crm)
end

When('eu clico em remover o medico de crm {string}') do |string|
  pending click_button 'Remover'
end

Then('eu vejo uma mensagem que o medico foi apagado com sucesso') do
  pending redirect_to medicos_url, notice: "Medico was successfully destroyed."
end

Given('o medico de crm {string} nao existe') do |string|
  pending find_by_id(crm)
end

When('eu clico em adicionar, depois de preencher os campos com meus dados') do
  pending click_button 'Create Medico'
end

Then('eu vejo uma mensagem que o medico foi adicionado com sucesso') do
  pending redirect_to medico_url(@medico), notice: "Medico was successfully created."
end