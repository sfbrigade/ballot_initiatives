require 'spec_helper'

describe "contributions/new" do
  before(:each) do
    assign(:contribution, stub_model(Contribution,
      :amount => 1,
      :initiative_id => 1,
      :committee_id => 1
    ).as_new_record)
  end

  it "renders new contribution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contributions_path, :method => "post" do
      assert_select "input#contribution_amount", :name => "contribution[amount]"
      assert_select "input#contribution_initiative_id", :name => "contribution[initiative_id]"
      assert_select "input#contribution_committee_id", :name => "contribution[committee_id]"
    end
  end
end
