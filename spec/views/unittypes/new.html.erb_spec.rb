require 'rails_helper'

RSpec.describe "unittypes/new", :type => :view do
  before(:each) do
    assign(:unittype, Unittype.new(
      :name => "MyString",
      :sqft => 1,
      :property_name => "MyString"
    ))
  end

  it "renders new unittype form" do
    render

    assert_select "form[action=?][method=?]", unittypes_path, "post" do

      assert_select "input#unittype_name[name=?]", "unittype[name]"

      assert_select "input#unittype_sqft[name=?]", "unittype[sqft]"

      assert_select "input#unittype_property_name[name=?]", "unittype[property_name]"
    end
  end
end
