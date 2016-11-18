require "rails_helper"

RSpec.describe Admin::MatchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/matches").to route_to("admin/matches#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/matches/new").to route_to("admin/matches#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/matches/1").to route_to("admin/matches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/matches/1/edit").to route_to("admin/matches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/matches").to route_to("admin/matches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/matches/1").to route_to("admin/matches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/matches/1").to route_to("admin/matches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/matches/1").to route_to("admin/matches#destroy", :id => "1")
    end

  end
end
