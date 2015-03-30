require 'rails_helper'

describe 'the blubs' do
  it 'adds a new blub' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Blub a New Blub'
    fill_in 'Content', with: "I love myself!"
    click_on 'Blub Away!'
    expect(page).to have_content 'blub has floated'
  end
end
