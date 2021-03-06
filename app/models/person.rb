class Person < ActiveRecord::Base
	belongs_to :recommendation, dependent: :destroy
	belongs_to :user
	validates :name, presence: true
	validates :relationship, presence: true
	validates :phone, presence: true
	validates :email, presence: true
end
