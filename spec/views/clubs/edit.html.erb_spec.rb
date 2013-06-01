require 'spec_helper'

describe "clubs/edit" do
  before(:each) do
    @club = assign(:club, stub_model(Club,
      :name => "MyString",
      :party_id => 1,
      :website => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clubs_path(@club), :method => "post" do
      assert_select "input#club_name", :name => "club[name]"
      assert_select "input#club_party_id", :name => "club[party_id]"
      assert_select "input#club_website", :name => "club[website]"
    end
  end
end
