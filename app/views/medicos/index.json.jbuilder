json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :crm, :fone, :email
  json.url medico_url(medico, format: :json)
end
