require 'spec_helper'

describe "CompleteProfiles" do
  describe "GET /complete_profiles" do
    before :each do
      http_request_login
      @user = FactoryGirl.create(:user)


    end
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get complete_profiles_path
      get root_path,{},@env
      
      response.status.should be(200)
    end
  end
end
