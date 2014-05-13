class Education < ActiveRecord::Base
	belongs_to :resume_info , dependent: :destroy
	has_many :schools
end
