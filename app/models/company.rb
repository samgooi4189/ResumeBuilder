class Company < ActiveRecord::Base
	belongs_to :experience
	has_many :positions
	validates :name, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
end
