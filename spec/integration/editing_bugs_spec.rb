require 'spec_helper'

feature "Editing bugs" do
  let!(:product) { Factory(:product) }
  let!(:bug) { Factory(:bug, :product => product) }

  before do
    visit '/'
    click_link product.title
    click_link bug.title
    click_link "Edit Bug"
  end

  scenario "Updating a bug" do
    fill_in "Title", :with => "Please fix this now, pretty please!"
    click_button "Update Bug"
    page.should have_content "Bug has been updated."
    within("#bug h2") do
      page.should have_content("Please fix this now, pretty please!")
    end
    page.should_not have_content bug.title
  end

  scenario "Updating a bug with invalid info" do
    fill_in "Title", :with => ""
    click_button "Update Bug"
    page.should have_content("Bug has not been updated.")
  end
end
