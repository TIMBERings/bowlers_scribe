require 'rails_helper'

RSpec.describe "admin/teams/show", type: :view do
  before(:each) do
    @admin_team = assign(:admin_team, Admin::Team.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
