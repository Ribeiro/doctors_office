json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :idade, :fone, :email
  json.url paciente_url(paciente, format: :json)
end
