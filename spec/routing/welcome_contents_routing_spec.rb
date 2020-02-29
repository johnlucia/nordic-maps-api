require "rails_helper"

RSpec.describe WelcomeContentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/welcome_contents").to route_to("welcome_contents#index")
    end

    it "routes to #new" do
      expect(:get => "/welcome_contents/new").to route_to("welcome_contents#new")
    end

    it "routes to #show" do
      expect(:get => "/welcome_contents/1").to route_to("welcome_contents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/welcome_contents/1/edit").to route_to("welcome_contents#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/welcome_contents").to route_to("welcome_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/welcome_contents/1").to route_to("welcome_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/welcome_contents/1").to route_to("welcome_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/welcome_contents/1").to route_to("welcome_contents#destroy", :id => "1")
    end
  end
end
