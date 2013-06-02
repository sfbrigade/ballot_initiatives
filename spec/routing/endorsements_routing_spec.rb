require "spec_helper"

describe EndorsementsController do
  describe "routing" do

    it "routes to #index" do
      get("/endorsements").should route_to("endorsements#index")
    end

    it "routes to #new" do
      get("/endorsements/new").should route_to("endorsements#new")
    end

    it "routes to #show" do
      get("/endorsements/1").should route_to("endorsements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/endorsements/1/edit").should route_to("endorsements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/endorsements").should route_to("endorsements#create")
    end

    it "routes to #update" do
      put("/endorsements/1").should route_to("endorsements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/endorsements/1").should route_to("endorsements#destroy", :id => "1")
    end

  end
end
