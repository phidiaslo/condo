require 'rails_helper'

RSpec.describe "unittypes/index", :type => :view do
  before(:each) do
    assign(:unittypes, [
      Unittype.create!(
        :name => "Name",
        :sqft => 1,
        :property_name => "Property Name"
      ),
      Unittype.create!(
        :name => "Name",
        :sqft => 1,
        :property_name => "Property Name"
      )
    ])
  end

  it "renders a list of unittypes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Property Name".to_s, :count => 2
  end
end
