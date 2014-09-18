require 'rails_helper'

RSpec.describe "bulletins/new", :type => :view do
  before(:each) do
    assign(:bulletin, Bulletin.new(
      :post_to => "MyString",
      :subject_title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new bulletin form" do
    render

    assert_select "form[action=?][method=?]", bulletins_path, "post" do

      assert_select "input#bulletin_post_to[name=?]", "bulletin[post_to]"

      assert_select "input#bulletin_subject_title[name=?]", "bulletin[subject_title]"

      assert_select "textarea#bulletin_content[name=?]", "bulletin[content]"
    end
  end
end
