require 'spec_helper'

describe "Skills" do
  describe "GET /skills" do
    before :each do
      http_request_login
    end
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get skills_path, {}, @env
      response.status.should == (200)
    end
  end
end
