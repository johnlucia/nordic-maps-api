require 'rails_helper'

RSpec.describe "junctions/index", type: :view do
  before(:each) do
    assign(:junctions, [
      Junction.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :active => false
      ),
      Junction.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :active => false
      )
    ])
  end

  it "renders a list of junctions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
