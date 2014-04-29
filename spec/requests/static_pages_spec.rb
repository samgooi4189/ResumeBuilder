require 'spec_helper'

describe "All pages" do

  subject { page }

  it "should have the right links on the layout" do
    visit root_path
    click_link "Company"
    expect(page).to have_title('Company')
    click_link "Education"
    expect(page).to have_title('Education')
    click_link "Experience"
    expect(page).to have_title('Experience')
    click_link "Information"
    expect(page).to have_title('Information')
    click_link "People"
    expect(page).to have_title('People')
    click_link "Position"
    expect(page).to have_title('Position')
    click_link "Recommendation"
    expect(page).to have_title('Recommendation')
    click_link "School"
    expect(page).to have_title('School')
    click_link "Skills"
    expect(page).to have_title('Skills')
    click_link "Skillset"
    expect(page).to have_title('Skillset')
    end
end