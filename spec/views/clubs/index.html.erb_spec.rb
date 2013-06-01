require 'spec_helper'

describe "clubs/index" do
  before(:each) do
    assign(:clubs, [
      stub_model(Club,
        :name => "Name",
        :party_id => 1,
        :website => "Website"
      ),
      stub_model(Club,
        :name => "Name",
        :party_id => 1,
        :website => "Website"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
