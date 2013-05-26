require 'spec_helper'

describe 'user index page' do      
  before :each do
    page.driver.browser.basic_authorize('big', 'boss')

    @admin = FactoryGirl.create(:admin)
    @admin.confirm!
    visit root_path
    click_link 'Daftar Masuk'
    within ('.login-box') do
      fill_in 'user_email', with: @admin.email
      fill_in 'user_password', with: 'password'
      click_button 'Daftar Masuk'
    end
  end
  describe 'when there are users who are members' do
    it 'shows dropdown selection to update membership category' do
      @user = FactoryGirl.create(:user, :member)
      visit users_path
      page.should have_selector("select", text: 'SilverGoldPlatinum')
    end
  end
end