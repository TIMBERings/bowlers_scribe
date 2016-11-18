require 'rails_helper'

RSpec.describe "weeks/edit", type: :view do
  before(:each) do
    @week = assign(:week, Week.create!(
      :sequence => 1,
      :season => nil
    ))
  end

  it "renders the edit week form" do
    render

    assert_select "form[action=?][method=?]", week_path(@week), "post" do

      assert_select "input#week_sequence[name=?]", "week[sequence]"

      assert_select "input#week_season_id[name=?]", "week[season_id]"
    end
  end
end
