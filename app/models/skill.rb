class Skill < ActiveRecord::Base
	belongs_to :skillset, dependent: :destroy
	belongs_to :user
	validate :name, presence: true
	validate :description, presence: true
end
