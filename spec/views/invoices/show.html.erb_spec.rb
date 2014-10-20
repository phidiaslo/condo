require 'rails_helper'

RSpec.describe "invoices/show", :type => :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :inv_no => "Inv No",
      :lot_no => "Lot No",
      :recipient => "Recipient",
      :address => "MyText",
      :description => "MyText",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Inv No/)
    expect(rendered).to match(/Lot No/)
    expect(rendered).to match(/Recipient/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
  end
end
