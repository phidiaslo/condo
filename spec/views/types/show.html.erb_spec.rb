require 'rails_helper'

RSpec.describe "types/show", :type => :view do
  before(:each) do
    @type = assign(:type, Type.create!(
      :name => "Name",
      :sqft => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
