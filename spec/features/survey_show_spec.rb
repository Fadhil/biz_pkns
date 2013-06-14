require 'spec_helper'

describe 'survey show page' do

  before :each do
    User.delete_all

    page.driver.browser.basic_authorize('big', 'boss')

    @admin = FactoryGirl.build(:user)
    @admin.add_role('Admin')
    @admin.save
    @admin.confirm!

    #courses and attendances and stuff
    @course = FactoryGirl.create(:course, start_date: 2.days.ago, end_date: 2.days.from_now)
    @attendee = FactoryGirl.create(:attendee)
    @attendance_list = FactoryGirl.create(:attendance_list)
    @course.attendance_list = @attendance_list
    @survey = FactoryGirl.create(:survey)
    @user = FactoryGirl.create(:user, :member)
    @user.courses << @course

    visit root_path
    click_link 'Daftar Masuk'
    within ('.login-box') do
      fill_in 'user_email', with: @admin.email
      fill_in 'user_password', with: 'password'
      click_button 'Daftar Masuk'
    end

    visit survey_path(@survey)
  end

  it 'should have a title' do
    page.should have_content(@survey.title)
  end

  describe 'when survey.sent is false' do
    it 'should show Hantar Survey' do
      @survey.sent = false
      @survey.save
      visit survey_path(@survey)
      page.should have_content('Hantar Survey Ke')
    end
  end

  describe 'when survey.sent is true' do
    it 'should not show Hantar Survey' do
      @survey.sent = true
      @survey.save
      visit survey_path(@survey)
      page.should_not have_content('Hantar Survey Ke')
    end
  end
end