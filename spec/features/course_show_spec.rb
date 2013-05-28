require 'spec_helper'

describe 'course show page' do
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
    @user = FactoryGirl.create(:user, :member)
    @user.courses << @course

    visit root_path
    click_link 'Daftar Masuk'
    within ('.login-box') do
      fill_in 'user_email', with: @admin.email
      fill_in 'user_password', with: 'password'
      click_button 'Daftar Masuk'
    end

    visit course_path(@course)
  end

  describe 'when course is still not ended' do
    it "displays 'End Course' button" do

      #puts page.body
      page.should have_xpath("//input[@value='Kursus Tamat']")
    end 
  end

  describe 'when Kursus Tamat is clicked' do
    it 'changes attendance_list.completed to true' do
      expect {
        click_button 'Kursus Tamat'
        @attendance_list.reload
      }.to change(@course.attendance_list, :completed).to(true)
    end
  end


  describe 'when Kursus is Tamat (completed)' do
    before :each do
      @course.attendance_list.completed = true
      @course.attendance_list.save

      visit course_path(@course)

    end

    it 'should not show preattendance list' do
      page.should_not have_content('Preattendance List')
    end

    it 'should show non editable table of attendees' do
      page.should have_content('Attendance List')
    end
  end

end