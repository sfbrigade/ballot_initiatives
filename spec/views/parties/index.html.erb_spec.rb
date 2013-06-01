require 'spec_helper'

describe "parties/index" do
  before(:each) do
    assign(:parties, [
      stub_model(Party,
        :name => "Name",
        :website => "Website"
      ),
      stub_model(Party,
        :name => "Name",
        :website => "Website"
      )
    ])
  end

  it "renders a list of parties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
