require 'rails_helper'

RSpec.describe "owners/show", :type => :view do
  before(:each) do
    @owner = assign(:owner, Owner.create!(
      :name => "Name",
      :ic_no => "Ic No",
      :email => "Email",
      :mobile_no => "Mobile No",
      :emergency_no => "Emergency No",
      :address => "MyText",
      :property_name => "Property Name",
      :lot_no => "Lot No",
      :ref_no => "Ref No"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Ic No/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile No/)
    expect(rendered).to match(/Emergency No/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Property Name/)
    expect(rendered).to match(/Lot No/)
    expect(rendered).to match(/Ref No/)
  end
end
