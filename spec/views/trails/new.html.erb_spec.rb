require 'rails_helper'

RSpec.describe "trails/new", type: :view do
  before(:each) do
    assign(:trail, Trail.new(
      :name => "MyString",
      :color => "MyString",
      :length => "MyString",
      :level => 1,
      :description => "MyText",
      :coordinates => ""
    ))
  end

  it "renders new trail form" do
    render

    assert_select "form[action=?][method=?]", trails_path, "post" do

      assert_select "input[name=?]", "trail[name]"

      assert_select "input[name=?]", "trail[color]"

      assert_select "input[name=?]", "trail[length]"

      assert_select "input[name=?]", "trail[level]"

      assert_select "textarea[name=?]", "trail[description]"

      assert_select "input[name=?]", "trail[coordinates]"
    end
  end
end
