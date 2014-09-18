require 'rails_helper'

RSpec.describe "properties/index", :type => :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :name => "Name",
        :address => "MyText"
      ),
      Property.create!(
        :name => "Name",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
