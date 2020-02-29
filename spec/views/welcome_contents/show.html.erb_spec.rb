require 'rails_helper'

RSpec.describe "welcome_contents/show", type: :view do
  before(:each) do
    @welcome_content = assign(:welcome_content, WelcomeContent.create!(
      :heading => "Heading",
      :body => "MyText",
      :link_text => "Link Text",
      :link_url => "Link Url",
      :position => 2,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Heading/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link Text/)
    expect(rendered).to match(/Link Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
