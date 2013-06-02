require 'spec_helper'

describe "endorsements/new" do
  before(:each) do
    assign(:endorsement, stub_model(Endorsement,
      :initiative_id => 1,
      :supporting => false
    ).as_new_record)
  end

  it "renders new endorsement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => endorsements_path, :method => "post" do
      assert_select "input#endorsement_initiative_id", :name => "endorsement[initiative_id]"
      assert_select "input#endorsement_supporting", :name => "endorsement[supporting]"
    end
  end
end
