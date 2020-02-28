require "rails_helper"

RSpec.describe SponsorshipLevelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sponsorship_levels").to route_to("sponsorship_levels#index")
    end

    it "routes to #new" do
      expect(:get => "/sponsorship_levels/new").to route_to("sponsorship_levels#new")
    end

    it "routes to #show" do
      expect(:get => "/sponsorship_levels/1").to route_to("sponsorship_levels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sponsorship_levels/1/edit").to route_to("sponsorship_levels#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sponsorship_levels").to route_to("sponsorship_levels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sponsorship_levels/1").to route_to("sponsorship_levels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sponsorship_levels/1").to route_to("sponsorship_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sponsorship_levels/1").to route_to("sponsorship_levels#destroy", :id => "1")
    end
  end
end
