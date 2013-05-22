require 'spec_helper'

describe User do
  before :each do
    @user = FactoryGirl.create(:admin)
  end

  describe 'should belong to one role' do
    it { should belong_to(:role) }
  end



  it 'has a role' do
    @user.role = Role.where(name: 'admin').first
    @user.role.name.should eq 'admin'
  end

  describe 'phone number' do
    it 'cannot contain letters or symbols' do
      user = FactoryGirl.build(:user, 
                                phone: 'abc')

      user.valid?.should_not be_true
    end
  end

  describe 'has and belong to many courses' do
    it { should have_and_belong_to_many(:courses) }
  end

  describe 'has many programs through courses' do
    it { should have_many(:programs).through(:courses)}
  end
end

