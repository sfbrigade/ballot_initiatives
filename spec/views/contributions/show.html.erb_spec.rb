require 'spec_helper'

describe "contributions/show" do
  before(:each) do
    @contribution = assign(:contribution, stub_model(Contribution,
      :amount => 1,
      :initiative_id => 2,
      :committee_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
