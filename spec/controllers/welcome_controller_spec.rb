require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe "GET index" do
    it "renders universal content by default" do
      get :index
      expect(assigns(:is_something_else)).to be true
    end

    it "renders without a password" do
      get :index
      expect(response).to render_template("index")
      expect(response.status).to eq(200)
    end
  end
end
