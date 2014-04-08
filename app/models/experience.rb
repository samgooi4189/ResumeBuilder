class Experience < ActiveRecord::Base
	belongs_to :resume_info
	has_many :companies
end
