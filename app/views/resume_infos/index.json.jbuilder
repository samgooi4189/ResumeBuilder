json.array!(@resume_infos) do |resume_info|
  json.extract! resume_info, :id, :user_id
  json.url resume_info_url(resume_info, format: :json)
end
