class ResumeInfo < ActiveRecord::Base
	belongs_to :user, dependent: :destroyed
	has_one :education
	has_one :experience
	has_one :recommendation
	has_one :information
	has_one :skillset
end
