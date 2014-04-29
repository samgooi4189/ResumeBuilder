class Skillset < ActiveRecord::Base
	belongs_to :resume_info
	has_many :skills
end
