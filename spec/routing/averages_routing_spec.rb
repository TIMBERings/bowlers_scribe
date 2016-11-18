require "rails_helper"

RSpec.describe AveragesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/averages").to route_to("averages#index")
    end

    it "routes to #new" do
      expect(:get => "/averages/new").to route_to("averages#new")
    end

    it "routes to #show" do
      expect(:get => "/averages/1").to route_to("averages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/averages/1/edit").to route_to("averages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/averages").to route_to("averages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/averages/1").to route_to("averages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/averages/1").to route_to("averages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/averages/1").to route_to("averages#destroy", :id => "1")
    end

  end
end
