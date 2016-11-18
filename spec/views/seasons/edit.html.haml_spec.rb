require 'rails_helper'

RSpec.describe "seasons/edit", type: :view do
  before(:each) do
    @season = assign(:season, Season.create!(
      :league => nil,
      :year => 1,
      :day => 1,
      :number_of_weeks => 1,
      :roll_off_weeks => 1
    ))
  end

  it "renders the edit season form" do
    render

    assert_select "form[action=?][method=?]", season_path(@season), "post" do

      assert_select "input#season_league_id[name=?]", "season[league_id]"

      assert_select "input#season_year[name=?]", "season[year]"

      assert_select "input#season_day[name=?]", "season[day]"

      assert_select "input#season_number_of_weeks[name=?]", "season[number_of_weeks]"

      assert_select "input#season_roll_off_weeks[name=?]", "season[roll_off_weeks]"
    end
  end
end
