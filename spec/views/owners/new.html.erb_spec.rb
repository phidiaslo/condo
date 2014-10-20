require 'rails_helper'

RSpec.describe "owners/new", :type => :view do
  before(:each) do
    assign(:owner, Owner.new(
      :name => "MyString",
      :ic_no => "MyString",
      :email => "MyString",
      :mobile_no => "MyString",
      :emergency_no => "MyString",
      :address => "MyText",
      :property_name => "MyString",
      :lot_no => "MyString",
      :ref_no => "MyString"
    ))
  end

  it "renders new owner form" do
    render

    assert_select "form[action=?][method=?]", owners_path, "post" do

      assert_select "input#owner_name[name=?]", "owner[name]"

      assert_select "input#owner_ic_no[name=?]", "owner[ic_no]"

      assert_select "input#owner_email[name=?]", "owner[email]"

      assert_select "input#owner_mobile_no[name=?]", "owner[mobile_no]"

      assert_select "input#owner_emergency_no[name=?]", "owner[emergency_no]"

      assert_select "textarea#owner_address[name=?]", "owner[address]"

      assert_select "input#owner_property_name[name=?]", "owner[property_name]"

      assert_select "input#owner_lot_no[name=?]", "owner[lot_no]"

      assert_select "input#owner_ref_no[name=?]", "owner[ref_no]"
    end
  end
end
