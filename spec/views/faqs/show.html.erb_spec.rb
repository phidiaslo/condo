require 'rails_helper'

RSpec.describe "faqs/show", :type => :view do
  before(:each) do
    @faq = assign(:faq, Faq.create!(
      :property_name => "Property Name",
      :question => "Question",
      :answer => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Property Name/)
    expect(rendered).to match(/Question/)
    expect(rendered).to match(/MyText/)
  end
end
