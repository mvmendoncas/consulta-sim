json.extract! paciente, :id, :primeiro_nome, :ultimo_nome, :cpf, :email, :data_de_nascimento, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
