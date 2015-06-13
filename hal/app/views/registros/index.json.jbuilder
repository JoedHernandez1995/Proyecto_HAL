json.array!(@registros) do |registro|
  json.extract! registro, :id, :type, :channel, :h_inicio, :h_final, :location, :user
  json.url registro_url(registro, format: :json)
end
