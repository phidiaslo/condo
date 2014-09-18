require 'rails_helper'

RSpec.describe "unittypes/show", :type => :view do
  before(:each) do
    @unittype = assign(:unittype, Unittype.create!(
      :name => "Name",
      :sqft => 1,
      :property_name => "Property Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Property Name/)
  end
end
