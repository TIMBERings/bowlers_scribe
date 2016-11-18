require 'rails_helper'

RSpec.describe "admin/seasons/edit", type: :view do
  before(:each) do
    @admin_season = assign(:admin_season, Admin::Season.create!())
  end

  it "renders the edit admin_season form" do
    render

    assert_select "form[action=?][method=?]", admin_season_path(@admin_season), "post" do
    end
  end
end
