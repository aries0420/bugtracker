require 'spec_helper'

feature "Viewing bugs" do
  before do
    candycrush = Factory(:product, :title => "Candy Crush")
    user = Factory(:user)
    bug = Factory(:bug,
            :product => candycrush,
            :title => "Fix the bug!",
            :description => "This is one of the coolest games ever!",
            :priority => "High",
            :status => "Open",
            :reporter => "Anonymous")
    bug.update_attribute(:user, user)

    angrybird = Factory(:product, :title => "Angry Bird")
    Factory(:bug,
            :product => angrybird,
            :title => "Animation freezes the screen",
            :description => "Isn't a joke.",
            :priority => "Medium",
            :status => "Open",
            :reporter => "Fan")

    visit '/'
  end

  scenario "Viewing bugs for a given product" do
    click_link "Candy Crush"
    page.should have_content("Fix the bug!")
    page.should_not have_content("Animation freezes the screen")

    click_link "Fix the bug!"
    within("#bug h2") do
      page.should have_content("Fix the bug!")
    end
    page.should have_content("This is one of the coolest games ever!")
  end
end
