require 'spec_helper'

feature "Creating Bugs" do
  before do
    Factory(:product, :title => "Angry Birds")
    visit '/'
    click_link "Angry Birds"
    click_link "New Bug"
  end

  scenario "Creating a bug" do
    fill_in "Title", :with => "Unable to pause the game"
    fill_in "Description", :with => "I hit game over!"
    fill_in "Priority", :with => "High"
    fill_in "Status", :with => "Open"
    fill_in "Reporter", :with => "Anonymous"
    click_button "Create Bug"
    page.should have_content("Bug has been created.")
  end

  scenario "Creating a bug without valid attributes fails" do
    click_button "Create Bug"
    page.should have_content("Bug has not been created.")
    page.should have_content("Title can't be blank")
    page.should have_content("Description can't be blank")
  end

  scenario "Description must be longer than 5 characters" do
    fill_in "Title", :with => "Unable to pause the game"
    fill_in "Description", :with => "sucks"
    click_button "Create Bug"
    page.should have_content("Bug has not been created.")
    page.should have_content("Description is too short")
  end
end
