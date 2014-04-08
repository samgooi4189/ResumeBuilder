json.array!(@positions) do |position|
  json.extract! position, :id, :name, :tasks, :company_id
  json.url position_url(position, format: :json)
end
