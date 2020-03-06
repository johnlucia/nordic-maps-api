require "rails_helper"

RSpec.describe JunctionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/junctions").to route_to("junctions#index")
    end

    it "routes to #new" do
      expect(:get => "/junctions/new").to route_to("junctions#new")
    end

    it "routes to #show" do
      expect(:get => "/junctions/1").to route_to("junctions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/junctions/1/edit").to route_to("junctions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/junctions").to route_to("junctions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/junctions/1").to route_to("junctions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/junctions/1").to route_to("junctions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/junctions/1").to route_to("junctions#destroy", :id => "1")
    end
  end
end
