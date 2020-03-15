require 'rails_helper'

RSpec.describe "shelters/new", type: :view do
  before(:each) do
    assign(:shelter, Shelter.new(
      :name => "MyString",
      :uid => "MyString",
      :description => "MyText",
      :active => false,
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders new shelter form" do
    render

    assert_select "form[action=?][method=?]", shelters_path, "post" do

      assert_select "input[name=?]", "shelter[name]"

      assert_select "input[name=?]", "shelter[uid]"

      assert_select "textarea[name=?]", "shelter[description]"

      assert_select "input[name=?]", "shelter[active]"

      assert_select "input[name=?]", "shelter[latitude]"

      assert_select "input[name=?]", "shelter[longitude]"
    end
  end
end
