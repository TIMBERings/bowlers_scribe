require 'rails_helper'

RSpec.describe "admin/seasons/new", type: :view do
  before(:each) do
    assign(:admin_season, Admin::Season.new())
  end

  it "renders new admin_season form" do
    render

    assert_select "form[action=?][method=?]", admin_seasons_path, "post" do
    end
  end
end
