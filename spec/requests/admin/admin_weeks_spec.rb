require 'rails_helper'

RSpec.describe "Admin::Weeks", type: :request do
  describe "GET /admin_weeks" do
    it "works! (now write some real specs)" do
      get admin_weeks_path
      expect(response).to have_http_status(200)
    end
  end
end
