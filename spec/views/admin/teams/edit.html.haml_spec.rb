require 'rails_helper'

RSpec.describe "admin/teams/edit", type: :view do
  before(:each) do
    @admin_team = assign(:admin_team, Admin::Team.create!())
  end

  it "renders the edit admin_team form" do
    render

    assert_select "form[action=?][method=?]", admin_team_path(@admin_team), "post" do
    end
  end
end
