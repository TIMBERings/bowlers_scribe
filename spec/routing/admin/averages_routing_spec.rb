require "rails_helper"

RSpec.describe Admin::AveragesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/averages").to route_to("admin/averages#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/averages/new").to route_to("admin/averages#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/averages/1").to route_to("admin/averages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/averages/1/edit").to route_to("admin/averages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/averages").to route_to("admin/averages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/averages/1").to route_to("admin/averages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/averages/1").to route_to("admin/averages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/averages/1").to route_to("admin/averages#destroy", :id => "1")
    end

  end
end
