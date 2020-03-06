require 'rails_helper'

RSpec.describe "trails/show", type: :view do
  before(:each) do
    @trail = assign(:trail, Trail.create!(
      :name => "Name",
      :color => "Color",
      :length => "Length",
      :level => 2,
      :description => "MyText",
      :coordinates => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Length/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
