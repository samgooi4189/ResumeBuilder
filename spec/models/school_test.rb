require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe School do
  before do
  	  @school = School.new(name: "UW Madison", grad_date: Date.new(2012,1,2),
  	  						 gpa: "2.3", degree: "Bachelor of Science",
  	  						 major: "Computer Science")
  end

  subject{ @school }

  it {should respond_to(:name)}
  it {should respond_to(:grad_date)}
  it {should respond_to(:gpa)}
  it {should respond_to(:degree)}
  it {should respond_to(:major)}
  it {should respond_to(:other)}
  it {should respond_to(:user_id)}
  it {should respond_to(:education_id)}

  describe "when name is not present" do
    before { @company.name = " " }
    it { should_not be_valid }
  end

  describe "when gpa is not present" do
    before { @company.gpa = " " }
    it { should_not be_valid }
  end

  describe "when degree is not present" do
    before { @company.degree = " " }
    it { should_not be_valid }
  end

  describe "when major is not present" do
    before { @company.major = " " }
    it { should_not be_valid }
  end
end
