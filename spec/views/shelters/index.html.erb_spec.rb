require 'rails_helper'

RSpec.describe "shelters/index", type: :view do
  before(:each) do
    assign(:shelters, [
      Shelter.create!(
        :name => "Name",
        :uid => "Uid",
        :description => "MyText",
        :active => false,
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Shelter.create!(
        :name => "Name",
        :uid => "Uid",
        :description => "MyText",
        :active => false,
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  it "renders a list of shelters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
