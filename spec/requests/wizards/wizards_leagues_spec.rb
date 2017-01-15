require 'rails_helper'

RSpec.describe "Wizards::Leagues", type: :request do
  describe "GET /wizards_leagues" do
    it "works! (now write some real specs)" do
      get wizards_leagues_path
      expect(response).to have_http_status(200)
    end
  end
end
