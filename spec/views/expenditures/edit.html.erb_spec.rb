require 'spec_helper'

describe "expenditures/edit" do
  before(:each) do
    @expenditure = assign(:expenditure, stub_model(Expenditure,
      :amount => 1
    ))
  end

  it "renders the edit expenditure form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expenditures_path(@expenditure), :method => "post" do
      assert_select "input#expenditure_amount", :name => "expenditure[amount]"
    end
  end
end
