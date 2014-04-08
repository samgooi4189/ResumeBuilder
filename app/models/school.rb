class School < ActiveRecord::Base
	belongs_to :education
	validates :name, presence: true
	validates :degree, presence: true
	validates :gpa, presence: true
	validates :major, presence: true
	validates :grad_date, presence: true
end
