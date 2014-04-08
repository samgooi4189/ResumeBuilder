class Recommendation < ActiveRecord::Base
	belongs_to :resume_info
	has_many :people
end
