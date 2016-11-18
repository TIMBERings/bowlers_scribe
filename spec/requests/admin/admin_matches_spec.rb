require 'rails_helper'

RSpec.describe "Admin::Matches", type: :request do
  describe "GET /admin_matches" do
    it "works! (now write some real specs)" do
      get admin_matches_path
      expect(response).to have_http_status(200)
    end
  end
end
