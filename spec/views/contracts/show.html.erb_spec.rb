require 'spec_helper'

describe "contracts/show" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :committee_id => 1,
      :firm_id => 2,
      :services => "Services",
      :amount_promised => 3,
      :amount_received => 4,
      :initiative_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Services/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
