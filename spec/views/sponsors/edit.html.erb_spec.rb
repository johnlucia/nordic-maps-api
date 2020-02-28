require 'rails_helper'

RSpec.describe "sponsors/edit", type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, Sponsor.create!(
      :name => "MyString",
      :logo_url => "MyString",
      :link_url => "MyString",
      :sponsorship_level_id => 1,
      :active => false,
      :description => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders the edit sponsor form" do
    render

    assert_select "form[action=?][method=?]", sponsor_path(@sponsor), "post" do

      assert_select "input[name=?]", "sponsor[name]"

      assert_select "input[name=?]", "sponsor[logo_url]"

      assert_select "input[name=?]", "sponsor[link_url]"

      assert_select "input[name=?]", "sponsor[sponsorship_level_id]"

      assert_select "input[name=?]", "sponsor[active]"

      assert_select "textarea[name=?]", "sponsor[description]"

      assert_select "textarea[name=?]", "sponsor[notes]"
    end
  end
end
