class Position < ActiveRecord::Base
	belongs_to :company, dependent: :destroy
	belongs_to :user
	validates :name, presence: true
	validates :tasks, presence: true
	validates :company_id, presence: true
end
