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
  it {should respond_to(:b_phone)}
  it {should respond_to(:resume_info_id)}
  it {should respond_to(:user_id)}

  describe "when name is not present" do
    before { @information.name = " " }
    it { should_not be_valid }
  end

  describe "when address_1 is not present" do
    before { @information.address_1 = " " }
    it { should_not be_valid }
  end

  describe "when city_state_zip is not present" do
    before { @information.city_state_zip = " " }
    it { should_not be_valid }
  end

  describe "when home phone is not present" do
    before { @information.h_phone = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @information.email = " " }
    it { should_not be_valid }
  end
end
