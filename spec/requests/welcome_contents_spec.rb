require 'rails_helper'

RSpec.describe "WelcomeContents", type: :request do
  describe "GET /welcome_contents" do
    it "requires a password" do
      get welcome_contents_path
      expect(response).to have_http_status(401)
    end
  end
end
