require 'spec_helper'

feature "Editing Game Products" do
  before do
    Factory(:product, :title => "Candy Crush")
    visit "/"
    click_link "Candy Crush"
    click_link "Edit Game Product"
  end

  scenario "Updating a game product" do
    fill_in "Title", :with => "Candy Crush by Saga"
    click_button "Update Product"
    page.should have_content("Game product has been updated.")
  end

  scenario "Updating a game product with invalid attributes is bad" do
    fill_in "Title", :with => ""
    click_button "Update Product"
    page.should have_content("Game product has not been updated.")
  end
end
