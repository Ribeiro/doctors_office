json.array!(@consultas) do |consulta|
  json.extract! consulta, :id, :data, :hora, :medico_id, :paciente_id
  json.url consulta_url(consulta, format: :json)
end
