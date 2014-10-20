require 'rails_helper'

RSpec.describe "contacts/new", :type => :view do
  before(:each) do
    assign(:contact, Contact.new(
      :name => "MyString",
      :contact_no => "MyString",
      :importance => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_contact_no[name=?]", "contact[contact_no]"

      assert_select "input#contact_importance[name=?]", "contact[importance]"

      assert_select "textarea#contact_address[name=?]", "contact[address]"
    end
  end
end
