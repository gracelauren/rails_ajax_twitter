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
    expect(page).to have_content 'be blank'
  end

  it 'destroys a blub' do
    blub1 = FactoryGirl.create(:blub)
    sign_in(blub1.user)
    click_on "Harpoon"
    expect(page).to have_content 'popped'
  end

  it'fetches new blubs when scrolling down the page', js: true do
    user = FactoryGirl.create(:user)
    sign_in(user)
    30.times {|n| FactoryGirl.create(:blub, content: (n+1)) }
    visit root_path
    page.should have_content('1')
    page.should_not have_content('26')
    page.evaluate_script("window.scrollTo(0, document.height)")
    page.should_not have_content('26')
  end
end
