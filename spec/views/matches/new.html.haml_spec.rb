require 'rails_helper'

RSpec.describe "matches/new", type: :view do
  before(:each) do
    assign(:match, Match.new(
      :left_team => 1,
      :right_team => 1,
      :left_lane => 1,
      :right_lane => 1,
      :left_payment => 1,
      :right_payment => 1,
      :left_points_on => 1,
      :right_points_won => 1,
      :week => nil
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_left_team[name=?]", "match[left_team]"

      assert_select "input#match_right_team[name=?]", "match[right_team]"

      assert_select "input#match_left_lane[name=?]", "match[left_lane]"

      assert_select "input#match_right_lane[name=?]", "match[right_lane]"

      assert_select "input#match_left_payment[name=?]", "match[left_payment]"

      assert_select "input#match_right_payment[name=?]", "match[right_payment]"

      assert_select "input#match_left_points_on[name=?]", "match[left_points_on]"

      assert_select "input#match_right_points_won[name=?]", "match[right_points_won]"

      assert_select "input#match_week_id[name=?]", "match[week_id]"
    end
  end
end
