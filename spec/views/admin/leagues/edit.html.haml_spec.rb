require 'rails_helper'

RSpec.describe "admin/leagues/edit", type: :view do
  before(:each) do
    @admin_league = assign(:admin_league, Admin::League.create!())
  end

  it "renders the edit admin_league form" do
    render

    assert_select "form[action=?][method=?]", admin_league_path(@admin_league), "post" do
    end
  end
end
