require 'spec_helper'

describe "Login Messages" do

  before :each do
    page.driver.browser.basic_authorize('big', 'boss')
  end
  describe "when user logs in with complete profile" do
    it "says 'successfully logged in'" do
      @user = FactoryGirl.create(:user, :profile_completed)
      @user.confirm!
      visit root_path
      click_link 'Daftar Masuk'
      within ('.login-box') do
        fill_in 'user_email', with: @user.email
        fill_in 'user_password', with: 'password'
        click_button 'Daftar Masuk'
      end
      page.should have_content('Proses log masuk berjaya.')
    end
  end

  describe "when user logs in with incomplete profile" do
    it 'reminds user to complete profile' do
      @user = FactoryGirl.create(:user, profile_complete: false)
      @user.confirm!
      visit root_path
      click_link 'Daftar Masuk'
      within ('.login-box') do
        fill_in 'user_email', with: @user.email
        fill_in 'user_password', with: 'password'
        click_button 'Daftar Masuk'
      end
      page.should have_content('Sila lengkapkan profil anda')
    end 
  end

  describe "when walk in user logs in for the first time" do
    it 'reminds user to update password' do
      @user = FactoryGirl.create(:user, walk_in_first_time: true)
      @user.confirm!
      visit root_path
      click_link 'Daftar Masuk'
      within ('.login-box') do
        fill_in 'user_email', with: @user.email
        fill_in 'user_password', with: 'password'
        click_button 'Daftar Masuk'
      end
      page.should have_content('Sila tukarkan kata laluan di Profil anda')
    end 
  end

  describe 'when admin logs in' do
    it 'should not show password or profile reminder' do
      @user = FactoryGirl.create(:user, profile_complete: false)
      @user.add_role('Admin')
      @user.save
      @user.confirm!
      visit root_path
      click_link 'Daftar Masuk'
      within ('.login-box') do
        fill_in 'user_email', with: @user.email
        fill_in 'user_password', with: 'password'
        click_button 'Daftar Masuk'
      end
      page.should_not have_content('Sila lengkapkan profil anda')  
      page.should_not have_content('Sila tukarkan kata laluan di Profil anda')   
    end
  end
end


