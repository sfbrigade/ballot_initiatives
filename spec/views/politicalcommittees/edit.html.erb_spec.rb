require 'spec_helper'

describe "politicalcommittees/edit" do
  before(:each) do
    @politicalcommittee = assign(:politicalcommittee, stub_model(Politicalcommittee,
      :name => "MyString",
      :issue_id => 1
    ))
  end

  it "renders the edit politicalcommittee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => politicalcommittees_path(@politicalcommittee), :method => "post" do
      assert_select "input#politicalcommittee_name", :name => "politicalcommittee[name]"
      assert_select "input#politicalcommittee_issue_id", :name => "politicalcommittee[issue_id]"
    end
  end
end
