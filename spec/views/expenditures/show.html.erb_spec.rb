require 'spec_helper'

describe "expenditures/show" do
  before(:each) do
    @expenditure = assign(:expenditure, stub_model(Expenditure,
      :amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
