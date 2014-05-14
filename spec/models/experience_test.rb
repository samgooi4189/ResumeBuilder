require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Experience do
  before do
  	  @experience = Experience.new(resume_info_id: 1)
  end

  subject{ @experience }

  it {should respond_to(:resume_info_id)}
end
