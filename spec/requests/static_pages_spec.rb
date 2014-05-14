require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Resume Builder' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }

    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        sign_in user
        visit root_path
      end
      it "should have the right links on the layout" do
        click_link "Company"
        expect(page).to have_title('Company')
        #click_link "Information"
        #expect(page).to have_title('Information')
        click_link "People"
        expect(page).to have_title('People')
        click_link "Position"
        expect(page).to have_title('Position')
        click_link "School"
        expect(page).to have_title('School')
        click_link "Skills"
        expect(page).to have_title('Skills')
      end
    end
  end

  describe "Links on layout" do
    it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "Resume Builder"
    expect(page).to have_title(full_title(''))
    end
  end
end


