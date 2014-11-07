require 'rails_helper'
require 'capybara/rails'

feature 'Auth1' do

  scenario 'Users can login and out1' do
    create_user email: "user@example.com"

    visit root_path
    click_on "Register"

    fill_in "Name", with: "User3"
    fill_in "Email", with: "user3@example.com"
    fill_in "Password", with: "password"
    fill_in "Confirm", with: "password"
    click_button "Register"
    expect(page).to have_content("user3@example.com")

  end

end
