require 'rails_helper'

RSpec.describe "trails/index", type: :view do
  before(:each) do
    assign(:trails, [
      Trail.create!(
        :name => "Name",
        :color => "Color",
        :length => "Length",
        :level => 2,
        :description => "MyText",
        :coordinates => ""
      ),
      Trail.create!(
        :name => "Name",
        :color => "Color",
        :length => "Length",
        :level => 2,
        :description => "MyText",
        :coordinates => ""
      )
    ])
  end

  it "renders a list of trails" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Length".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
