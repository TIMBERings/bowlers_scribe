require 'rails_helper'

RSpec.describe "Averages", type: :request do
  describe "GET /averages" do
    it "works! (now write some real specs)" do
      get averages_path
      expect(response).to have_http_status(200)
    end
  end
end
