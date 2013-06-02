require "spec_helper"

describe PoliticalcommitteesController do
  describe "routing" do

    it "routes to #index" do
      get("/politicalcommittees").should route_to("politicalcommittees#index")
    end

    it "routes to #new" do
      get("/politicalcommittees/new").should route_to("politicalcommittees#new")
    end

    it "routes to #show" do
      get("/politicalcommittees/1").should route_to("politicalcommittees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/politicalcommittees/1/edit").should route_to("politicalcommittees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/politicalcommittees").should route_to("politicalcommittees#create")
    end

    it "routes to #update" do
      put("/politicalcommittees/1").should route_to("politicalcommittees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/politicalcommittees/1").should route_to("politicalcommittees#destroy", :id => "1")
    end

  end
end
