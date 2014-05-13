class Recommendation < ActiveRecord::Base
	belongs_to :resume_info, dependent: :destroyed
	has_many :people
end
