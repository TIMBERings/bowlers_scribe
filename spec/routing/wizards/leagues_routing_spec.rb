require "rails_helper"

RSpec.describe Wizards::LeaguesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wizards/leagues").to route_to("wizards/leagues#index")
    end

    it "routes to #new" do
      expect(:get => "/wizards/leagues/new").to route_to("wizards/leagues#new")
    end

    it "routes to #show" do
      expect(:get => "/wizards/leagues/1").to route_to("wizards/leagues#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wizards/leagues/1/edit").to route_to("wizards/leagues#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wizards/leagues").to route_to("wizards/leagues#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wizards/leagues/1").to route_to("wizards/leagues#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wizards/leagues/1").to route_to("wizards/leagues#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wizards/leagues/1").to route_to("wizards/leagues#destroy", :id => "1")
    end

  end
end
