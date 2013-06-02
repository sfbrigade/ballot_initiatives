require 'spec_helper'

describe "contracts/index" do
  before(:each) do
    assign(:contracts, [
      stub_model(Contract,
        :committee_id => 1,
        :firm_id => 2,
        :services => "Services",
        :amount_promised => 3,
        :amount_received => 4,
        :initiative_id => 5
      ),
      stub_model(Contract,
        :committee_id => 1,
        :firm_id => 2,
        :services => "Services",
        :amount_promised => 3,
        :amount_received => 4,
        :initiative_id => 5
      )
    ])
  end

  it "renders a list of contracts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Services".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
