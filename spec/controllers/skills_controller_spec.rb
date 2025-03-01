require 'spec_helper'

describe SkillsController do
include AuthHelper
before(:each) do
  http_login
  @skill = stub_model(Skill)
  assigns(:skill){@skill}
  controller.stub(:current_user){FactoryGirl.build(:user)}
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



end
