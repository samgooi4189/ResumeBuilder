json.array!(@skillsets) do |skillset|
  json.extract! skillset, :id, :resume_id
  json.url skillset_url(skillset, format: :json)
end
