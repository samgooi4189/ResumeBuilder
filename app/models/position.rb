class Position < ActiveRecord::Base
	belongs_to :company
	validates :name, presence: true
	validates :tasks, presence: true
end
