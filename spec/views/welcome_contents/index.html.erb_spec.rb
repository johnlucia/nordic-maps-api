require 'rails_helper'

RSpec.describe "welcome_contents/index", type: :view do
  before(:each) do
    assign(:welcome_contents, [
      WelcomeContent.create!(
        :heading => "Heading",
        :body => "MyText",
        :link_text => "Link Text",
        :link_url => "Link Url",
        :position => 2,
        :active => false
      ),
      WelcomeContent.create!(
        :heading => "Heading",
        :body => "MyText",
        :link_text => "Link Text",
        :link_url => "Link Url",
        :position => 2,
        :active => false
      )
    ])
  end

  it "renders a list of welcome_contents" do
    render
    assert_select "tr>td", :text => "Heading".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link Text".to_s, :count => 2
    assert_select "tr>td", :text => "Link Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
