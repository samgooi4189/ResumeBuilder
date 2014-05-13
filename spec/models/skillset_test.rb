require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Skillset do
  before do
  	  @skillset = Skillset.new(resume_info_id: 1)
  end

  subject{ @skillset }

  it {should respond_to(:resume_info_id)}
end
