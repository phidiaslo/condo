require 'rails_helper'

RSpec.describe "owners/index", :type => :view do
  before(:each) do
    assign(:owners, [
      Owner.create!(
        :name => "Name",
        :ic_no => "Ic No",
        :email => "Email",
        :mobile_no => "Mobile No",
        :emergency_no => "Emergency No",
        :address => "MyText",
        :property_name => "Property Name",
        :lot_no => "Lot No",
        :ref_no => "Ref No"
      ),
      Owner.create!(
        :name => "Name",
        :ic_no => "Ic No",
        :email => "Email",
        :mobile_no => "Mobile No",
        :emergency_no => "Emergency No",
        :address => "MyText",
        :property_name => "Property Name",
        :lot_no => "Lot No",
        :ref_no => "Ref No"
      )
    ])
  end

  it "renders a list of owners" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ic No".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile No".to_s, :count => 2
    assert_select "tr>td", :text => "Emergency No".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Property Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lot No".to_s, :count => 2
    assert_select "tr>td", :text => "Ref No".to_s, :count => 2
  end
end
