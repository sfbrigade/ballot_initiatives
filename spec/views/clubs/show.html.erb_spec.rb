require 'spec_helper'

describe "clubs/show" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "Name",
      :party_id => 1,
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Website/)
  end
end
