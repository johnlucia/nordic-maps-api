require 'rails_helper'

RSpec.describe WelcomeContentsController, type: :controller do
  describe "GET index" do
    before {
      allow_any_instance_of(ApplicationController)
        .to receive(:require_login)
        .and_return(true)
    }
    it "sets welcome_contents" do
      get :index
      expect(assigns(:welcome_contents)).to eq []
    end

    it "renders with a password" do
      get :index
      expect(response).to render_template("index")
      expect(response.status).to eq(200)
    end
  end
end
