require 'rails_helper'

RSpec.describe "units/new", :type => :view do
  before(:each) do
    assign(:unit, Unit.new(
      :lot_no => "MyString",
      :type => "",
      :water_meter => "MyString"
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input#unit_lot_no[name=?]", "unit[lot_no]"

      assert_select "input#unit_type[name=?]", "unit[type]"

      assert_select "input#unit_water_meter[name=?]", "unit[water_meter]"
    end
  end
end
