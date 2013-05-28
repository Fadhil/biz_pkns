require 'spec_helper'

describe 'user index page' do      
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
  describe 'when there are users who are members' do
    it 'shows dropdown selection to update membership category' do
      @user = FactoryGirl.create(:user, :member, profile_complete:true, walk_in_first_time: false)
      visit users_path
      page.should have_selector("select", text: 'SilverGoldPlatinum')
    end
  end
end

describe 'user show page' do
  before :each do
    User.delete_all
    page.driver.browser.basic_authorize('big', 'boss')

    @admin = FactoryGirl.build(:admin)
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
  describe 'when user is a member with silver category' do
    it 'should have the content silver' do
      @user = FactoryGirl.create(:user, :member)
      visit user_path(@user)
      page.should have_xpath("//img[@src='/assets/silver.png']")
    end
  end
  describe 'when user is a member with gold category' do
    it 'should have the content gold' do
      @user = FactoryGirl.create(:user, :member)
      @user.membership.category = 'gold'
      @user.membership.save
      visit user_path(@user)
      page.should have_xpath("//img[@src='/assets/gold.png']")
    end
  end
  describe 'when user is a member with platinum category' do
    it 'should have the content platinum' do
      @user = FactoryGirl.create(:user, :member)
      @user.membership.category = 'platinum'
      @user.membership.save
      visit user_path(@user)
      page.should have_xpath("//img[@src='/assets/platinum.png']")
    end
  end
end