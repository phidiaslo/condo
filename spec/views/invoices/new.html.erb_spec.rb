require 'rails_helper'

RSpec.describe "invoices/new", :type => :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :inv_no => "MyString",
      :lot_no => "MyString",
      :recipient => "MyString",
      :address => "MyText",
      :description => "MyText",
      :amount => "9.99"
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input#invoice_inv_no[name=?]", "invoice[inv_no]"

      assert_select "input#invoice_lot_no[name=?]", "invoice[lot_no]"

      assert_select "input#invoice_recipient[name=?]", "invoice[recipient]"

      assert_select "textarea#invoice_address[name=?]", "invoice[address]"

      assert_select "textarea#invoice_description[name=?]", "invoice[description]"

      assert_select "input#invoice_amount[name=?]", "invoice[amount]"
    end
  end
end
