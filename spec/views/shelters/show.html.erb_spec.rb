require 'rails_helper'

RSpec.describe "shelters/show", type: :view do
  before(:each) do
    @shelter = assign(:shelter, Shelter.create!(
      :name => "Name",
      :uid => "Uid",
      :description => "MyText",
      :active => false,
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
