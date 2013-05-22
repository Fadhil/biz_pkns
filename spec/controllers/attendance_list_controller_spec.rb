require 'spec_helper'

describe AttendanceListController do
  before :each do
    #@user = FactoryGirl.create(:user, ic_number: '111111-11-1111')
    http_login
    controller.stub(:walk_in_first_time){ false }
  end
  describe '#update' do
    it 'should create a new user' do
      @attendance_list = FactoryGirl.create(:attendance_list)
      expect {
        put 'update', { id: @attendance_list.id, attendance_list: { attendees_attributes: {"1369217789187"=>{"first_name"=>"kemaskini", "last_name"=>"ahlinujum", "email"=>"haram@jadah.com", "ic_number"=>"111122-11-2222", "_destroy"=>"false", "attended"=>"1"}}}, "commit"=>"Kemaskini"}
      }.to change(User,:count).by(1)
    end
  end
end
