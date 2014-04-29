json.array!(@people) do |person|
  json.extract! person, :id, :name, :relationship, :phone, :email, :recommend_id
  json.url person_url(person, format: :json)
end
