require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Skill do
  before do
  	  @skill = Skill.new(name: "Procrastinator", description: "I am so lazy 
                              you wouldn't believe it")
  end

  subject{ @skill }

  it {should respond_to(:name)}
  it {should respond_to(:description)}
  it {should respond_to(:user_id)}
  it {should respond_to(:skillset_id)}

  describe "when name is not present" do
    before { @skill.name = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @skill.description = " " }
    it { should_not be_valid }
  end
end
