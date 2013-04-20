require 'spec_helper'

describe PagesController do
require 'rake'


  describe "GET 'welcome'" do
    it "returns http success" do
      get 'welcome'
      response.should be_success
    end
  end

  describe '#upcoming_courses' do
    before(:each) do
      @course = []
      3.times do |i|
        @course << FactoryGirl.create(:course, name: "Course #{i}", start_date: Date.today.to_date, end_date: 1.month.from_now.to_date, status: true)
      end

      get 'upcoming_courses'
    end
    it 'returns http success' do
      response.should be_success

    end

    it 'gets list of upcoming courses' do
      assigns(:courses).should == [@course[0],@course[1],@course[2]]
    end

      context 'when search terms are received' do
        before :each do 
          @course_the_course_name = []
          @course_the_course_name << FactoryGirl.create(:course, name: 'the course name', start_date: 2.days.from_now, end_date: 1.month.from_now.to_date, status: true)
        end
        it 'returns list of matching courses' do
          get 'upcoming_courses',{ search: { terms: 'the course name' }}
          assigns(:courses).should == @course_the_course_name
        end

        it 'matches without being case sensitive' do
          get 'upcoming_courses',{ search: { terms: 'THE Course Name' }}
          assigns(:courses).should == @course_the_course_name
        end
    end
  end


end
