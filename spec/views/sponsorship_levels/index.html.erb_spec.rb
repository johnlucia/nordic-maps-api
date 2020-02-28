require 'rails_helper'

RSpec.describe "sponsorship_levels/index", type: :view do
  before(:each) do
    assign(:sponsorship_levels, [
      SponsorshipLevel.create!(
        :name => "Name"
      ),
      SponsorshipLevel.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of sponsorship_levels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
