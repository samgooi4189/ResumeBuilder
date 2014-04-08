class Education < ActiveRecord::Base
	belongs_to :resume_info
	has_many :schools
end
