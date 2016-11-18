require 'rails_helper'

RSpec.describe "Admin::Leagues", type: :request do
  describe "GET /admin_leagues" do
    it "works! (now write some real specs)" do
      get admin_leagues_path
      expect(response).to have_http_status(200)
    end
  end
end
