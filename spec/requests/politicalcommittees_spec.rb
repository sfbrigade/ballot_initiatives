require 'spec_helper'

describe "Politicalcommittees" do
  describe "GET /politicalcommittees" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get politicalcommittees_path
      response.status.should be(200)
    end
  end
end
