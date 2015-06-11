json.array!(@emisoras) do |emisora|
  json.extract! emisora, :id, :top, :radio, :fecha, :visitas
  json.url emisora_url(emisora, format: :json)
end
