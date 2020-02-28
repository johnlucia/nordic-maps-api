require 'rails_helper'

RSpec.describe "sponsorship_levels/new", type: :view do
  before(:each) do
    assign(:sponsorship_level, SponsorshipLevel.new(
      :name => "MyString"
    ))
  end

  it "renders new sponsorship_level form" do
    render

    assert_select "form[action=?][method=?]", sponsorship_levels_path, "post" do

      assert_select "input[name=?]", "sponsorship_level[name]"
    end
  end
end
