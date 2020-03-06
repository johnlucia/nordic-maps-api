require 'rails_helper'

RSpec.describe "trails/edit", type: :view do
  before(:each) do
    @trail = assign(:trail, Trail.create!(
      :name => "MyString",
      :color => "MyString",
      :length => "MyString",
      :level => 1,
      :description => "MyText",
      :coordinates => ""
    ))
  end

  it "renders the edit trail form" do
    render

    assert_select "form[action=?][method=?]", trail_path(@trail), "post" do

      assert_select "input[name=?]", "trail[name]"

      assert_select "input[name=?]", "trail[color]"

      assert_select "input[name=?]", "trail[length]"

      assert_select "input[name=?]", "trail[level]"

      assert_select "textarea[name=?]", "trail[description]"

      assert_select "input[name=?]", "trail[coordinates]"
    end
  end
end
