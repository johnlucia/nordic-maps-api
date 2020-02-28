require 'rails_helper'

RSpec.describe "sponsors/show", type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, Sponsor.create!(
      :name => "Name",
      :logoUrl => "Logo Url",
      :linkUrl => "Link Url",
      :sponsorship_level_id => 2,
      :active => false,
      :description => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Logo Url/)
    expect(rendered).to match(/Link Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
