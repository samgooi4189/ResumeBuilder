module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  
  def initResume( user )
    @resume_info = ResumeInfo.create!({})
    @resume_info.experience = Experience.create!({})
    @resume_info.education = Education.create!({})
    @resume_info.information = Information.create!({})
    @resume_info.recommendation = Recommendation.create!({})
    @resume_info.skillset = Skillset.create!({})
    user.resume_info = @resume_info
    user.information = @resume_info.information
  end

end
