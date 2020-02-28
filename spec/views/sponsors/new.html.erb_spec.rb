require 'rails_helper'

RSpec.describe "sponsors/new", type: :view do
  before(:each) do
    assign(:sponsor, Sponsor.new(
      :name => "MyString",
      :logoUrl => "MyString",
      :linkUrl => "MyString",
      :sponsorship_level_id => 1,
      :active => false,
      :description => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders new sponsor form" do
    render

    assert_select "form[action=?][method=?]", sponsors_path, "post" do

      assert_select "input[name=?]", "sponsor[name]"

      assert_select "input[name=?]", "sponsor[logoUrl]"

      assert_select "input[name=?]", "sponsor[linkUrl]"

      assert_select "input[name=?]", "sponsor[sponsorship_level_id]"

      assert_select "input[name=?]", "sponsor[active]"

      assert_select "textarea[name=?]", "sponsor[description]"

      assert_select "textarea[name=?]", "sponsor[notes]"
    end
  end
end
