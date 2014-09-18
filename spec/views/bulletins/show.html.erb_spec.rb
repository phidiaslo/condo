require 'rails_helper'

RSpec.describe "bulletins/show", :type => :view do
  before(:each) do
    @bulletin = assign(:bulletin, Bulletin.create!(
      :post_to => "Post To",
      :subject_title => "Subject Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Post To/)
    expect(rendered).to match(/Subject Title/)
    expect(rendered).to match(/MyText/)
  end
end
