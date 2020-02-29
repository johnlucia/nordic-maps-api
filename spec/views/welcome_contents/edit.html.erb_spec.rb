require 'rails_helper'

RSpec.describe "welcome_contents/edit", type: :view do
  before(:each) do
    @welcome_content = assign(:welcome_content, WelcomeContent.create!(
      :heading => "MyString",
      :body => "MyText",
      :link_text => "MyString",
      :link_url => "MyString",
      :position => 1,
      :active => false
    ))
  end

  it "renders the edit welcome_content form" do
    render

    assert_select "form[action=?][method=?]", welcome_content_path(@welcome_content), "post" do

      assert_select "input[name=?]", "welcome_content[heading]"

      assert_select "textarea[name=?]", "welcome_content[body]"

      assert_select "input[name=?]", "welcome_content[link_text]"

      assert_select "input[name=?]", "welcome_content[link_url]"

      assert_select "input[name=?]", "welcome_content[position]"

      assert_select "input[name=?]", "welcome_content[active]"
    end
  end
end
