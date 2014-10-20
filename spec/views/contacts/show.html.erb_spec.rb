require 'rails_helper'

RSpec.describe "contacts/show", :type => :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :name => "Name",
      :contact_no => "Contact No",
      :importance => "Importance",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact No/)
    expect(rendered).to match(/Importance/)
    expect(rendered).to match(/MyText/)
  end
end
