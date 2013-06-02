require 'spec_helper'

describe "officials/index" do
  before(:each) do
    assign(:officials, [
      stub_model(Official,
        :person_id => 1,
        :office => "Office",
        :politicalcommittee_id => 2,
        :duties => "Duties",
        :issue_id => 3,
        :term_limit => "Term Limit",
        :firm_id => 4
      ),
      stub_model(Official,
        :person_id => 1,
        :office => "Office",
        :politicalcommittee_id => 2,
        :duties => "Duties",
        :issue_id => 3,
        :term_limit => "Term Limit",
        :firm_id => 4
      )
    ])
  end

  it "renders a list of officials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Office".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Duties".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Term Limit".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
