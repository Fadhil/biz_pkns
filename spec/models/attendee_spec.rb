require 'spec_helper'

describe Attendee do
  before :each do

    @attendee1 = FactoryGirl.create(:attendee)
    @attendee3 = Attendee.create(first_name:'second', last_name:'walkin', email:'walk2@in.com', ic_number:'901111-11-1112')

  end


  describe 'creating a new attendee' do
    it 'creates a new User' do
      expect {
        @new_attendee = Attendee.create(first_name:'new', last_name:'walkin', email:'walk@in.com', ic_number:'901111-11-1111')
      }.to change(User,:count).by(1)
    end

    it 'adds a member_id to newly created User' do
      expect {
        @new_attendee = Attendee.create(first_name:'new', last_name:'walkin', email:'walk@in.com', ic_number:'901111-11-1111')
      }.to change(User.members,:count).by(1)
    end

    it 'sends emails to new membrers' do
      expect {
        @new_attendee = Attendee.create(first_name:'new', last_name:'walkin', email:'walk@in.com', ic_number:'901111-11-1111')
      }.to change(ActionMailer::Base.deliveries, :count).by(1)
    end
  end


end
