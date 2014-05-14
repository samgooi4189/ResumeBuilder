require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Person do
  before do
  	  @person = Person.new(name: "Foo Bar", relationship: "Boss",
  	  						 phone: "9875643210", email: "test@example.com")
  end

  subject{ @person }

  it {should respond_to(:name)}
  it {should respond_to(:relationship)}
  it {should respond_to(:phone)}
  it {should respond_to(:email)}
  it {should respond_to(:user_id)}
  it {should respond_to(:recommended_id)}

  describe "when name is not present" do
    before { @person.name = " " }
    it { should_not be_valid }
  end

  describe "when relationship is not present" do
    before { @person.relationship = " " }
    it { should_not be_valid }
  end

  describe "when phone is not present" do
    before { @person.phone = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @person.email = " " }
    it { should_not be_valid }
  end
end
