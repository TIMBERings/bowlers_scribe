require 'rails_helper'

RSpec.describe "matches/index", type: :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :left_team => 2,
        :right_team => 3,
        :left_lane => 4,
        :right_lane => 5,
        :left_payment => 6,
        :right_payment => 7,
        :left_points_on => 8,
        :right_points_won => 9,
        :week => nil
      ),
      Match.create!(
        :left_team => 2,
        :right_team => 3,
        :left_lane => 4,
        :right_lane => 5,
        :left_payment => 6,
        :right_payment => 7,
        :left_points_on => 8,
        :right_points_won => 9,
        :week => nil
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
