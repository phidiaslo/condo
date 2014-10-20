require 'rails_helper'

RSpec.describe "faqs/new", :type => :view do
  before(:each) do
    assign(:faq, Faq.new(
      :property_name => "MyString",
      :question => "MyString",
      :answer => "MyText"
    ))
  end

  it "renders new faq form" do
    render

    assert_select "form[action=?][method=?]", faqs_path, "post" do

      assert_select "input#faq_property_name[name=?]", "faq[property_name]"

      assert_select "input#faq_question[name=?]", "faq[question]"

      assert_select "textarea#faq_answer[name=?]", "faq[answer]"
    end
  end
end
