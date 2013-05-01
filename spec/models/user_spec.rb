require 'spec_helper'

describe User do
  before :each do
    @user = FactoryGirl.create(:user)
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
end

