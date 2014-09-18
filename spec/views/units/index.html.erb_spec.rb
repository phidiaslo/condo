require 'rails_helper'

RSpec.describe "units/index", :type => :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :lot_no => "Lot No",
        :type => "Type",
        :water_meter => "Water Meter"
      ),
      Unit.create!(
        :lot_no => "Lot No",
        :type => "Type",
        :water_meter => "Water Meter"
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => "Lot No".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Water Meter".to_s, :count => 2
  end
end
