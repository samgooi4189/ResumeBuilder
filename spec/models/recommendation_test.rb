require 'spec_helper'

#class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
describe Recommendation do
  before do
  	  @recommendation = Recommendation.new(resume_info_id: 1)
  end

  subject{ @recommendation }

  it {should respond_to(:resume_info_id)}
end
