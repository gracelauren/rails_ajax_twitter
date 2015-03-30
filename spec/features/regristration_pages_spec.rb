require 'rails_helper'

describe 'registering a user' do
  it 'registers a new user' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: "test@test.com"
    fill_in 'Username', with: "tester"
    fill_in 'Password', with: "testing123"
    fill_in 'Password confirmation', with: "testing123"
    click_button "Sign up"
    expect(page).to have_content "Welcome!"
  end
end
