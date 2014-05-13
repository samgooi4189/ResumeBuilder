class Experience < ActiveRecord::Base
	belongs_to :resume_info, dependent: :destroyed
	has_many :companies
end
