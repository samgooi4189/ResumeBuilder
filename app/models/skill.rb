class Skill < ActiveRecord::Base
	belongs_to :skillset
	validate :name, presence: true
	validate :description, presence: true
end
