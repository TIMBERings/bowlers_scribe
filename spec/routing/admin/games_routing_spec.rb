require "rails_helper"

RSpec.describe Admin::GamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/games").to route_to("admin/games#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/games/new").to route_to("admin/games#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/games/1").to route_to("admin/games#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/games/1/edit").to route_to("admin/games#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/games").to route_to("admin/games#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/games/1").to route_to("admin/games#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/games/1").to route_to("admin/games#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/games/1").to route_to("admin/games#destroy", :id => "1")
    end

  end
end
