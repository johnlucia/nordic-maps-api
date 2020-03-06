require 'rails_helper'

RSpec.describe "junctions/new", type: :view do
  before(:each) do
    assign(:junction, Junction.new(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :active => false
    ))
  end

  it "renders new junction form" do
    render

    assert_select "form[action=?][method=?]", junctions_path, "post" do

      assert_select "input[name=?]", "junction[name]"

      assert_select "input[name=?]", "junction[latitude]"

      assert_select "input[name=?]", "junction[longitude]"

      assert_select "input[name=?]", "junction[active]"
    end
  end
end
