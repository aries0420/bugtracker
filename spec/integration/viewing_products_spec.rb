require 'spec_helper'

feature "Viewing game products" do
  scenario "Listing all game products" do
    product = Factory.create(:product, :title => "Candy Crush")
    visit '/'
    click_link 'Candy Crush'
    page.current_url.should == product_url(product)
  end
end
