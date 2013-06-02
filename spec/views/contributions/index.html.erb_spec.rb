require 'spec_helper'

describe "contributions/index" do
  before(:each) do
    assign(:contributions, [
      stub_model(Contribution,
        :amount => 1,
        :initiative_id => 2,
        :committee_id => 3
      ),
      stub_model(Contribution,
        :amount => 1,
        :initiative_id => 2,
        :committee_id => 3
      )
    ])
  end

  it "renders a list of contributions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
