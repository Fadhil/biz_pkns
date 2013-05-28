require 'spec_helper'

describe PastAttendancesController do
include AuthHelper
before(:each) do
  http_login
  @user = FactoryGirl.create( :user, type: 'PknsUser', id: 1)
  @user.add_role('Admin')
  @user.save
  controller.stub(:check_status){ true }
  controller.stub(:current_consultant){FactoryGirl.build(:consultant)}
  @ability = Object.new
  @ability.extend(CanCan::Ability)
  controller.stub(:current_ability) { @ability }
  @ability.can :manage, :all


end
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

end
