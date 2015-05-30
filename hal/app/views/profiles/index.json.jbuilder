json.array!(@profiles) do |profile|
  json.extract! profile, :id, :nombre, :edad, :profesion, :pais, :correo, :user_id
  json.url profile_url(profile, format: :json)
end
