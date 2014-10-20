require 'rails_helper'

RSpec.describe "contacts/index", :type => :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :contact_no => "Contact No",
        :importance => "Importance",
        :address => "MyText"
      ),
      Contact.create!(
        :name => "Name",
        :contact_no => "Contact No",
        :importance => "Importance",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact No".to_s, :count => 2
    assert_select "tr>td", :text => "Importance".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
