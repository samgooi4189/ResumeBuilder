json.array!(@educations) do |education|
  json.extract! education, :id, :resume_id
  json.url education_url(education, format: :json)
end
