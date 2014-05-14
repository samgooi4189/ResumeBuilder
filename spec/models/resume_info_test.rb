require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe "Resume Info" do
  before do
  	  @resume_info = ResumeInfo.new()
  end

  subject{ @resume_info }

  it {should respond_to(:user_id)}
end
