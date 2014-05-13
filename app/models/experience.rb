class Experience < ActiveRecord::Base
	belongs_to :resume_info, dependent: :destroy
	has_many :companies
end
