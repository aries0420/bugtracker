require 'spec_helper'

feature "Deleting game products" do
  scenario "Deleting a game product" do
    Factory(:product, :title => "Candy Crush")
    visit "/"
    click_link "Candy Crush"
    click_link "Delete Game Product"
    page.should have_content("Game product has been deleted.")

    visit "/"
    page.should_not have_content("Candy Crush")
  end
end
