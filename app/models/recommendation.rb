class Recommendation < ActiveRecord::Base
	belongs_to :resume_info, dependent: :destroy
	has_many :people
end
