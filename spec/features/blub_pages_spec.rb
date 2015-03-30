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

  it 'throws an error if content is not filled in' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Blub a New Blub'
    click_on 'Blub Away!'
    expect(page).to have_content 'all gone wrong'
  end

  it 'destroys a blub' do
    blub1 = FactoryGirl.create(:blub)
    sign_in(blub1.user)
    click_on "Harpoon"
    expect(page).to have_content 'popped'
  end
end
