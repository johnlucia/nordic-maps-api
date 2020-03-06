require 'rails_helper'

RSpec.describe "junctions/edit", type: :view do
  before(:each) do
    @junction = assign(:junction, Junction.create!(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :active => false
    ))
  end

  it "renders the edit junction form" do
    render

    assert_select "form[action=?][method=?]", junction_path(@junction), "post" do

      assert_select "input[name=?]", "junction[name]"

      assert_select "input[name=?]", "junction[latitude]"

      assert_select "input[name=?]", "junction[longitude]"

      assert_select "input[name=?]", "junction[active]"
    end
  end
end
