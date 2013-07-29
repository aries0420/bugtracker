require 'spec_helper'

feature 'Creating Game Products' do
  before do
    visit '/'
    click_link 'New Game Product'
  end

  scenario "can create a game product" do
    fill_in 'Title', :with => 'Candy Crush'
    fill_in 'Description', :with => "A bejeweled-like fun game on multiple platforms."
    click_button "Create Product"
    page.should have_content('Game product has been created.')

    product = Product.find_by_title("Candy Crush")
    page.current_url.should == product_url(product)
    # title = "Candy Crush - Products - Bugtracker"
    # find("title").should have_content(title)
  end

  scenario "can not create a product without a title" do
    click_button 'Create Product'
    page.should have_content("Product has not been created.")
    page.should have_content("Title can't be blank")
  end
end
