require 'rails_helper'

RSpec.describe "admin/matches/edit", type: :view do
  before(:each) do
    @admin_match = assign(:admin_match, Admin::Match.create!())
  end

  it "renders the edit admin_match form" do
    render

    assert_select "form[action=?][method=?]", admin_match_path(@admin_match), "post" do
    end
  end
end
