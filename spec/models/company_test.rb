require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Company do
  before do
  	  @company = Company.new(name: "Example Comany", start_date: Date.new(2012,1,2),
  	  						 end_date: Date.new(2013,2,3))
  end

  subject{ @company }

  it {should respond_to(:name)}
  it {should respond_to(:start_date)}
  it {should respond_to(:end_date)}
  it {should respond_to(:user_id)}
  it {should respond_to(:experience_id)}

  describe "when name is not present" do
    before { @company.name = " " }
    it { should_not be_valid }
  end

end
