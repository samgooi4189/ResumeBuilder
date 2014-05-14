require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Position do
  before do
  	  @position = Position.new(name: "Example Position", tasks: "Cleaning, sitting, living",
  	  						 company_id: 1)
  end

  subject{ @position }

  it {should respond_to(:name)}
  it {should respond_to(:tasks)}
  it {should respond_to(:company_id)}
  it {should respond_to(:user_id)}

  describe "when name is not present" do
    before { @position.name = " " }
    it { should_not be_valid }
  end

  describe "when tasks is not present" do
    before { @position.tasks = " " }
    it { should_not be_valid }
  end

  describe "when company is not present" do
    before { @position.company_id = " " }
    it { should_not be_valid }
  end
end
