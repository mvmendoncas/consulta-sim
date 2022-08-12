json.extract! medico, :id, :primeiro_nome, :ultimo_nome, :cpf, :email, :especialidade, :numero_do_crm, :created_at, :updated_at
json.url medico_url(medico, format: :json)
