require 'spec_helper'

describe AttendanceListController do
  describe '#update' do
    it 'should create a new user' do
      @attendance_list = FactoryGirl.create(:attendance_list)
      @attendee = FactoryGirl.build(:attendee)
      expect {
        put 'update', { id: @attendance_list.id }#, attendance_list: { attendees_attributes: @attendee } }
      }.to change(User,:count).by(1)
    end
  end
end
