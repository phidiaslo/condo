require 'rails_helper'

RSpec.describe "invoices/index", :type => :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :inv_no => "Inv No",
        :lot_no => "Lot No",
        :recipient => "Recipient",
        :address => "MyText",
        :description => "MyText",
        :amount => "9.99"
      ),
      Invoice.create!(
        :inv_no => "Inv No",
        :lot_no => "Lot No",
        :recipient => "Recipient",
        :address => "MyText",
        :description => "MyText",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "Inv No".to_s, :count => 2
    assert_select "tr>td", :text => "Lot No".to_s, :count => 2
    assert_select "tr>td", :text => "Recipient".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
