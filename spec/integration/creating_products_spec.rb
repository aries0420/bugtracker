require 'spec_helper'

feature 'Creating Game Products' do
  scenario "can create a game product" do
    visit '/'
    click_link 'New Game Product'
    fill_in 'Title', :with => 'Candy Crush'
    fill_in 'Description', :with => "A bejeweled-like fun game on multiple platforms."
    click_button "Create Product"
    page.should have_content('Game product has been created.')
  end
end
