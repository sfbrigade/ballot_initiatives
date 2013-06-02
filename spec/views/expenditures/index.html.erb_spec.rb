require 'spec_helper'

describe "expenditures/index" do
  before(:each) do
    assign(:expenditures, [
      stub_model(Expenditure,
        :amount => 1
      ),
      stub_model(Expenditure,
        :amount => 1
      )
    ])
  end

  it "renders a list of expenditures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
