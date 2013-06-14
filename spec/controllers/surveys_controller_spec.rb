require 'spec_helper'

describe SurveysController do
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
  @survey = FactoryGirl.create(:survey)
  FactoryGirl.create(:user)
end
  # This should return the minimal set of attributes required to create a valid
  # Program. As you add validations to Program, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProgramsController. Be sure to keep this updated too.
  def valid_session
    {}
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show',  {:id => @survey.id}, valid_session
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe 'POST send_survey' do
    it 'returns http success' do
      post 'send_survey', {:id => @survey.id}, valid_session 
      response.should redirect_to(@survey)
    end

    it 'should change survey sent field to true' do
      expect {
        post 'send_survey', {:id => @survey.id, survey_user_select: 'all_users'}, valid_session
        @survey.reload
      }.to change(@survey, :sent).to(true)
    end
  end
end
