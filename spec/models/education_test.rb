require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Education do
  before do
  	  @education = Education.new(resume_info_id: 1)
  end

  subject{ @education }

  it {should respond_to(:resume_info_id)}
end
