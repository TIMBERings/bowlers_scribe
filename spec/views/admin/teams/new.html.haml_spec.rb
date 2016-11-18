require 'rails_helper'

RSpec.describe "admin/teams/new", type: :view do
  before(:each) do
    assign(:admin_team, Admin::Team.new())
  end

  it "renders new admin_team form" do
    render

    assert_select "form[action=?][method=?]", admin_teams_path, "post" do
    end
  end
end
