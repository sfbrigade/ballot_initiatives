require 'spec_helper'

describe "politicalcommittees/new" do
  before(:each) do
    assign(:politicalcommittee, stub_model(Politicalcommittee,
      :name => "MyString",
      :issue_id => 1
    ).as_new_record)
  end

  it "renders new politicalcommittee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => politicalcommittees_path, :method => "post" do
      assert_select "input#politicalcommittee_name", :name => "politicalcommittee[name]"
      assert_select "input#politicalcommittee_issue_id", :name => "politicalcommittee[issue_id]"
    end
  end
end
