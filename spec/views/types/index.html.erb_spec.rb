require 'rails_helper'

RSpec.describe "types/index", :type => :view do
  before(:each) do
    assign(:types, [
      Type.create!(
        :name => "Name",
        :sqft => 1
      ),
      Type.create!(
        :name => "Name",
        :sqft => 1
      )
    ])
  end

  it "renders a list of types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
