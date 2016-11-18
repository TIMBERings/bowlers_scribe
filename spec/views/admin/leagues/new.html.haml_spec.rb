require 'rails_helper'

RSpec.describe "admin/leagues/new", type: :view do
  before(:each) do
    assign(:admin_league, Admin::League.new())
  end

  it "renders new admin_league form" do
    render

    assert_select "form[action=?][method=?]", admin_leagues_path, "post" do
    end
  end
end
