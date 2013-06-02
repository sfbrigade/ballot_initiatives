require 'spec_helper'

describe "endorsements/index" do
  before(:each) do
    assign(:endorsements, [
      stub_model(Endorsement,
        :initiative_id => 1,
        :supporting => false
      ),
      stub_model(Endorsement,
        :initiative_id => 1,
        :supporting => false
      )
    ])
  end

  it "renders a list of endorsements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
