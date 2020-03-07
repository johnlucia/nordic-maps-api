require 'rails_helper'

RSpec.describe "Sponsors", type: :request do
  describe "GET /sponsors" do
    it "requires a password" do
      get sponsors_path
      expect(response).to have_http_status(401)
    end
  end
end
