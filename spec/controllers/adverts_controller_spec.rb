require 'spec_helper'

describe AdvertsController do
  before :each do
    @user = FactoryGirl.create(:user,profile_complete: true, walk_in_first_time: false)
    http_login
    controller.stub(:current_user){ @user }
  end
  # This should return the minimal set of attributes required to create a valid
  # Course. As you add validations to Course, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoursesController. Be sure to keep this updated too.
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

  describe "POST 'create'" do
    it "returns creates a new advert" do
      expect {
        post :create, { advert: valid_attributes}, valid_session
      }.to change(Advert, :count).by(1)
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit', id: 1
      response.should be_success
    end
  end

  describe "POST 'update'" do
    it "returns http success" do
      post 'update', id: 1
      response.should be_success
    end
  end

  describe "post 'destroy'" do
    it "returns http success" do
      post 'destroy', id: 1
      response.should be_success
    end
  end

end
