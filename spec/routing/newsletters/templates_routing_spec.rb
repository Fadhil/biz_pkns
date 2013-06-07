require "spec_helper"

describe Newsletters::TemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/newsletters/templates").should route_to("newsletters/templates#index")
    end

    it "routes to #new" do
      get("/newsletters/templates/new").should route_to("newsletters/templates#new")
    end

    it "routes to #show" do
      get("/newsletters/templates/1").should route_to("newsletters/templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/newsletters/templates/1/edit").should route_to("newsletters/templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/newsletters/templates").should route_to("newsletters/templates#create")
    end

    it "routes to #update" do
      put("/newsletters/templates/1").should route_to("newsletters/templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/newsletters/templates/1").should route_to("newsletters/templates#destroy", :id => "1")
    end

  end
end
