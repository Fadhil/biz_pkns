require 'spec_helper'

describe PknsUsersController do
include AuthHelper
before(:each) do
  http_login
  @user = FactoryGirl.create( :user, type: 'PknsUser', id: 1)
  controller.stub(:check_status){ true }
  controller.stub(:current_consultant){FactoryGirl.build(:consultant)}
  @ability = Object.new
  @ability.extend(CanCan::Ability)
  controller.stub(:current_ability) { @ability }
  @ability.can :manage, :all


end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', id: 1
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit', id: 1
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end


end
