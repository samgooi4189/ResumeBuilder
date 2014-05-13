class Information < ActiveRecord::Base
	belongs_to :resume_info, dependent: :destroy
	belongs_to :user
end
