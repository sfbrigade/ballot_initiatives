require 'spec_helper'

describe "contracts/new" do
  before(:each) do
    assign(:contract, stub_model(Contract,
      :committee_id => 1,
      :firm_id => 1,
      :services => "MyString",
      :amount_promised => 1,
      :amount_received => 1,
      :initiative_id => 1
    ).as_new_record)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path, :method => "post" do
      assert_select "input#contract_committee_id", :name => "contract[committee_id]"
      assert_select "input#contract_firm_id", :name => "contract[firm_id]"
      assert_select "input#contract_services", :name => "contract[services]"
      assert_select "input#contract_amount_promised", :name => "contract[amount_promised]"
      assert_select "input#contract_amount_received", :name => "contract[amount_received]"
      assert_select "input#contract_initiative_id", :name => "contract[initiative_id]"
    end
  end
end
