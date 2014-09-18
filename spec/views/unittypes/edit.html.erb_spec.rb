require 'rails_helper'

RSpec.describe "unittypes/edit", :type => :view do
  before(:each) do
    @unittype = assign(:unittype, Unittype.create!(
      :name => "MyString",
      :sqft => 1,
      :property_name => "MyString"
    ))
  end

  it "renders the edit unittype form" do
    render

    assert_select "form[action=?][method=?]", unittype_path(@unittype), "post" do

      assert_select "input#unittype_name[name=?]", "unittype[name]"

      assert_select "input#unittype_sqft[name=?]", "unittype[sqft]"

      assert_select "input#unittype_property_name[name=?]", "unittype[property_name]"
    end
  end
end
