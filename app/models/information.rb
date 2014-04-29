class Information < ActiveRecord::Base
	belongs_to :resume_info
	validates :name, presence: true
	validates :address_1, presence: true
	validates :address_2, presence: true
	validates :city_state_zip, presence: true
	validates :h_phone, presence: true
	validates :b_phone, presence: true
	validates :email, presence: true
end
