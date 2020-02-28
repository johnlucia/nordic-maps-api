require 'rails_helper'

RSpec.describe "sponsors/index", type: :view do
  before(:each) do
    assign(:sponsors, [
      Sponsor.create!(
        :name => "Name",
        :logoUrl => "Logo Url",
        :linkUrl => "Link Url",
        :sponsorship_level_id => 2,
        :active => false,
        :description => "MyText",
        :notes => "MyText"
      ),
      Sponsor.create!(
        :name => "Name",
        :logoUrl => "Logo Url",
        :linkUrl => "Link Url",
        :sponsorship_level_id => 2,
        :active => false,
        :description => "MyText",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of sponsors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
    assert_select "tr>td", :text => "Link Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
