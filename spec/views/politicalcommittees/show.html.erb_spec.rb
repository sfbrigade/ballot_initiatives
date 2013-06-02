require 'spec_helper'

describe "politicalcommittees/show" do
  before(:each) do
    @politicalcommittee = assign(:politicalcommittee, stub_model(Politicalcommittee,
      :name => "Name",
      :issue_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
