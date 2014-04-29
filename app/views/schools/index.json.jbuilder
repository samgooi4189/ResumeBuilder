json.array!(@schools) do |school|
  json.extract! school, :id, :name, :degree, :gpa, :major, :grad_date, :other, :educ_id
  json.url school_url(school, format: :json)
end
