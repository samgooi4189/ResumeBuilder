require 'test_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Company do
  before do
  	  @company = Company.new(name: "Example Comany", start_date: Date.new(2012,1,2),
  	  						 end_date: Date.new(2013,2,3), exp_id: 1)
  end

  subject{ @company }

  it {should respond_to(:name)}

  describe "when name is not present" do
    before { @company.name = " " }
    it { should_not be_valid }
  end
end
