require 'spec_helper'

feature 'Deleting bugs' do
  let!(:product) { Factory(:product) }
  let!(:user) { Factory(:confirmed_user) }
  let!(:bug) do
    bug = Factory(:bug, :product => product)
    bug.update_attribute(:user, user)
    bug
  end

  before do
    sign_in_as!(user)
    visit '/'
    click_link product.title
    click_link bug.title
  end

  scenario "Deleting a bug" do
    click_link "Delete Bug"
    page.should have_content("Bug has been deleted.")
    page.current_url.should == product_url(product)
  end
end
