require 'rails_helper'

RSpec.describe "units/show", :type => :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :lot_no => "Lot No",
      :type => "Type",
      :water_meter => "Water Meter"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lot No/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Water Meter/)
  end
end
