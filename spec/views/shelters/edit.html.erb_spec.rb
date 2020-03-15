require 'rails_helper'

RSpec.describe "shelters/edit", type: :view do
  before(:each) do
    @shelter = assign(:shelter, Shelter.create!(
      :name => "MyString",
      :uid => "MyString",
      :description => "MyText",
      :active => false,
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders the edit shelter form" do
    render

    assert_select "form[action=?][method=?]", shelter_path(@shelter), "post" do

      assert_select "input[name=?]", "shelter[name]"

      assert_select "input[name=?]", "shelter[uid]"

      assert_select "textarea[name=?]", "shelter[description]"

      assert_select "input[name=?]", "shelter[active]"

      assert_select "input[name=?]", "shelter[latitude]"

      assert_select "input[name=?]", "shelter[longitude]"
    end
  end
end
