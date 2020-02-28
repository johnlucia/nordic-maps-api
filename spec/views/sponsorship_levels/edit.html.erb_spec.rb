require 'rails_helper'

RSpec.describe "sponsorship_levels/edit", type: :view do
  before(:each) do
    @sponsorship_level = assign(:sponsorship_level, SponsorshipLevel.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit sponsorship_level form" do
    render

    assert_select "form[action=?][method=?]", sponsorship_level_path(@sponsorship_level), "post" do

      assert_select "input[name=?]", "sponsorship_level[name]"
    end
  end
end
