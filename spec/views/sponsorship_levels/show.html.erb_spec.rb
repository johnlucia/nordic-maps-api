require 'rails_helper'

RSpec.describe "sponsorship_levels/show", type: :view do
  before(:each) do
    @sponsorship_level = assign(:sponsorship_level, SponsorshipLevel.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
