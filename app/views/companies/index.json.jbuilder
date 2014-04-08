json.array!(@companies) do |company|
  json.extract! company, :id, :name, :start_date, :end_date, :exp_id
  json.url company_url(company, format: :json)
end
