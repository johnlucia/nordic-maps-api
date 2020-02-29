require 'rails_helper'

RSpec.describe "welcome_contents/new", type: :view do
  before(:each) do
    assign(:welcome_content, WelcomeContent.new(
      :heading => "MyString",
      :body => "MyText",
      :link_text => "MyString",
      :link_url => "MyString",
      :position => 1,
      :active => false
    ))
  end

  it "renders new welcome_content form" do
    render

    assert_select "form[action=?][method=?]", welcome_contents_path, "post" do

      assert_select "input[name=?]", "welcome_content[heading]"

      assert_select "textarea[name=?]", "welcome_content[body]"

      assert_select "input[name=?]", "welcome_content[link_text]"

      assert_select "input[name=?]", "welcome_content[link_url]"

      assert_select "input[name=?]", "welcome_content[position]"

      assert_select "input[name=?]", "welcome_content[active]"
    end
  end
end
