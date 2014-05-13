require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Information do
  before do
  	  @information = Information.new(name: "Example Name", address_1: "333 Lakeside Rd.",
  	  						 city_state_zip: "Madison, WI 53150", h_phone: "1234567890",
  	  						 email: "test@example.com", resume_info_id: 1)
  end

  subject{ @information }

  it {should respond_to(:name)}
  it {should respond_to(:address_1)}
  it {should respond_to(:address_2)}
  it {should respond_to(:city_state_zip)}
  it {should respond_to(:h_phone)}
  it {should respond_to(:email)}
  it {should respond_to(:resume_info_id)}
  it {should respond_to(:user_id)}
