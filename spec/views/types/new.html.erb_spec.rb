require 'rails_helper'

RSpec.describe "types/new", :type => :view do
  before(:each) do
    assign(:type, Type.new(
      :name => "MyString",
      :sqft => 1
    ))
  end

  it "renders new type form" do
    render

    assert_select "form[action=?][method=?]", types_path, "post" do

      assert_select "input#type_name[name=?]", "type[name]"

      assert_select "input#type_sqft[name=?]", "type[sqft]"
    end
  end
end
