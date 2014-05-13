class Skill < ActiveRecord::Base
	belongs_to :skillset
	belongs_to :user
	validate :name, presence: true
	validate :description, presence: true
end
