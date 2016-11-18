require 'rails_helper'

RSpec.describe "admin/matches/new", type: :view do
  before(:each) do
    assign(:admin_match, Admin::Match.new())
  end

  it "renders new admin_match form" do
    render

    assert_select "form[action=?][method=?]", admin_matches_path, "post" do
    end
  end
end
