require 'rails_helper'

RSpec.describe "WelcomeContents", type: :request do
  describe "GET /welcome_contents" do
    it "works! (now write some real specs)" do
      get welcome_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
