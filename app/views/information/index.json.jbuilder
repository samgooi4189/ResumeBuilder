json.array!(@information) do |information|
  json.extract! information, :id, :name, :address_1, :address_2, :city_state_zip, :h_phone, :b_phone, :email, :resume_id
  json.url information_url(information, format: :json)
end
