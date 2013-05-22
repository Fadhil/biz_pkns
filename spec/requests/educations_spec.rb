require 'spec_helper'

describe "Educations" do
  describe "GET /educations" do
    before :each do
      http_request_login
    end
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get educations_path, {}, @env
      response.status.should be(200)
    end
  end
end
