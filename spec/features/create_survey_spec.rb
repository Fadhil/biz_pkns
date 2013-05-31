require 'spec_helper'

describe 'admin' do      
  before :each do
    User.delete_all

    page.driver.browser.basic_authorize('big', 'boss')

    @admin = FactoryGirl.build(:user)
    @admin.add_role('Admin')
    @admin.save
    @admin.confirm!
    visit root_path
    click_link 'Daftar Masuk'
    within ('.login-box') do
      fill_in 'user_email', with: @admin.email
      fill_in 'user_password', with: 'password'
      click_button 'Daftar Masuk'
    end
  end

  describe 'visits surveys/new' do
    it 'should be successful' do
      visit new_survey_path

      page.should have_content('Daftar Survey Baru')
      page.should have_xpath("//input[@value='Daftar Survey']")
    end
  end
end 