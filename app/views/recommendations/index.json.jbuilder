json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :resume_id
  json.url recommendation_url(recommendation, format: :json)
end
