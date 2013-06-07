require 'spec_helper'

describe ReportsController do

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
