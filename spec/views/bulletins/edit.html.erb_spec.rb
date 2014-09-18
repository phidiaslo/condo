require 'rails_helper'

RSpec.describe "bulletins/edit", :type => :view do
  before(:each) do
    @bulletin = assign(:bulletin, Bulletin.create!(
      :post_to => "MyString",
      :subject_title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit bulletin form" do
    render

    assert_select "form[action=?][method=?]", bulletin_path(@bulletin), "post" do

      assert_select "input#bulletin_post_to[name=?]", "bulletin[post_to]"

      assert_select "input#bulletin_subject_title[name=?]", "bulletin[subject_title]"

      assert_select "textarea#bulletin_content[name=?]", "bulletin[content]"
    end
  end
end
