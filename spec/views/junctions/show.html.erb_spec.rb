require 'rails_helper'

RSpec.describe "junctions/show", type: :view do
  before(:each) do
    @junction = assign(:junction, Junction.create!(
      :name => "Name",
      :latitude => "9.99",
      :longitude => "9.99",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
  end
end
