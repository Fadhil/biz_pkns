require 'spec_helper'

describe ReportsController do 
 before :each do
    @user = FactoryGirl.create(:user,profile_complete: true, walk_in_first_time: false)
    http_login
    controller.stub(:current_user){ @user }
  end
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoursesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  def check_status
    {}
  end

  describe "GET 'users'" do
    it "returns http success" do
      get 'users'
      response.should be_success
    end
  end

  describe "GET 'consultants'" do
    it "returns http success" do
      get 'consultants'
      response.should be_success
    end
  end

  describe "GET 'programs'" do
    it "returns http success" do
      get 'programs'
      response.should be_success
    end
  end

end
