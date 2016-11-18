require 'rails_helper'

RSpec.describe "admin/teams/index", type: :view do
  before(:each) do
    assign(:admin_teams, [
      Admin::Team.create!(),
      Admin::Team.create!()
    ])
  end

  it "renders a list of admin/teams" do
    render
  end
end
