require 'spec_helper'

describe "officials/new" do
  before(:each) do
    assign(:official, stub_model(Official,
      :person_id => 1,
      :office => "MyString",
      :politicalcommittee_id => 1,
      :duties => "MyString",
      :issue_id => 1,
      :term_limit => "MyString",
      :firm_id => 1
    ).as_new_record)
  end

  it "renders new official form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => officials_path, :method => "post" do
      assert_select "input#official_person_id", :name => "official[person_id]"
      assert_select "input#official_office", :name => "official[office]"
      assert_select "input#official_politicalcommittee_id", :name => "official[politicalcommittee_id]"
      assert_select "input#official_duties", :name => "official[duties]"
      assert_select "input#official_issue_id", :name => "official[issue_id]"
      assert_select "input#official_term_limit", :name => "official[term_limit]"
      assert_select "input#official_firm_id", :name => "official[firm_id]"
    end
  end
end
