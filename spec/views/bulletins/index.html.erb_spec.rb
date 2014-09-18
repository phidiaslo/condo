require 'rails_helper'

RSpec.describe "bulletins/index", :type => :view do
  before(:each) do
    assign(:bulletins, [
      Bulletin.create!(
        :post_to => "Post To",
        :subject_title => "Subject Title",
        :content => "MyText"
      ),
      Bulletin.create!(
        :post_to => "Post To",
        :subject_title => "Subject Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of bulletins" do
    render
    assert_select "tr>td", :text => "Post To".to_s, :count => 2
    assert_select "tr>td", :text => "Subject Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
