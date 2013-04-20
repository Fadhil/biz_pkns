require 'spec_helper'

describe Course do

  before :each do
    @course = []

    # First three courses that should show up
    3.times do |i|
      @course[i] = FactoryGirl.create(:course, name: "Course #{i}", start_date: i.days.from_now, end_date: i.months.from_now, status: true)
    end
    # Old course - shouldn't show
    @course << FactoryGirl.create(:course, name:"old course", start_date: 2.days.ago, end_date: 2.weeks.from_now, status: true)

    @course << FactoryGirl.create(:course, name:"inactive course", start_date: 2.days.from_now, end_date: 2.weeks.from_now, status: false)
  end

  it 'returns array of upcoming courses by date' do
    courses = Course.active.upcoming
    courses.should == [@course[0],@course[1],@course[2]]
  end

  describe 'has a pax attribute' do
    it { should respond_to(:pax) }
  end

end
