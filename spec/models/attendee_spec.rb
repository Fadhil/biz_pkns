require 'spec_helper'

describe Attendee do
  before :each do
    @attendee1 = FactoryGirl.create(:attendee)
    @attendee2 = Attendee.create(first_name:'new', last_name:'walkin', email:'walk@in.com', ic_number:'901111-11-1111')
    @attendee3 = Attendee.create(first_name:'second', last_name:'walkin', email:'walk2@in.com', ic_number:'901111-11-1112')

  end

  describe 'scope non_members' do
    it 'should return array of members without member_id' do
      Attendee.non_members.should == [@attendee2, @attendee3]
    end
  end
  describe '#create_walk_in_user' do
    it 'creates a new User' do
      expect {
        Attendee.create_walk_in_user
      }.to change(User,:count).by(2)
    end

    it 'should no longer have attendees without user_id' do
      expect {
        Attendee.create_walk_in_user
      }.to change(Attendee.non_members,:count).by(-2)
      
    end

    it 'adds two new memberships with member ids' do
      expect {
        Attendee.create_walk_in_user
      }.to change(User.members,:count).by(2)
    end
  end


end
