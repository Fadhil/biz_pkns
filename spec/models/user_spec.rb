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
end