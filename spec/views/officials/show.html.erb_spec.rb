require 'spec_helper'

describe "officials/show" do
  before(:each) do
    @official = assign(:official, stub_model(Official,
      :person_id => 1,
      :office => "Office",
      :politicalcommittee_id => 2,
      :duties => "Duties",
      :issue_id => 3,
      :term_limit => "Term Limit",
      :firm_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Office/)
    rendered.should match(/2/)
    rendered.should match(/Duties/)
    rendered.should match(/3/)
    rendered.should match(/Term Limit/)
    rendered.should match(/4/)
  end
end
