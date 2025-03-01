require 'spec_helper'

describe User do
  before :each do

    @user = FactoryGirl.create(:user)
  end

  describe 'should belong to one role' do
    it { should have_many(:roles) }
  end



  it 'has a role' do
    @user.add_role('Admin')
    @user.has_role?('Admin').should be_true
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
    it { should have_many(:programs).through(:courses) }
  end

  describe 'has many surveys through completed surveys' do
    it { should have_many(:completed_surveys) }
    it { should have_many(:surveys).through(:completed_surveys) }
  end

  describe 'has many questions through responses' do 
    it { should have_many(:responses) }
    it { should have_many(:questions).through(:responses)}
  end

  describe '#complete_profile' do
    context 'when user updates profile and does not have all required fields' do
      it "does not change 'profile_complete'" do
        @normal_user = FactoryGirl.build(:user)
        @normal_user.save
        @normal_user.profile_complete.should_not == true

      end
    end
    context 'when user updates profile and has all required fields' do
      it "set 'profile_complete' to true" do
        User.delete_all
        Skill.delete_all
        UsersSkill.delete_all
        @user = FactoryGirl.build(:user)
        # User has many skills through experiences
        @skill = FactoryGirl.create(:skill)
        @experience = FactoryGirl.create(:experience)
        @user.skills << @skill
        @user.experience << @experience
        # User has many educations through education_background
        @education = FactoryGirl.create(:education)
        @education_background = FactoryGirl.create(:education_background)
        @user.educations << @education
        @user.education_background << @education_background
        @user.save

        @user.profile_complete.should == true

      end
    end
  end

  describe '#make_member' do
    it 'should default membership.category to silver' do
      @user = FactoryGirl.build(:user)
      @user.make_member
      @user.membership.category.should eq 'silver'
    end
  end
end

