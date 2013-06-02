require 'spec_helper'

describe "endorsements/show" do
  before(:each) do
    @endorsement = assign(:endorsement, stub_model(Endorsement,
      :initiative_id => 1,
      :supporting => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
