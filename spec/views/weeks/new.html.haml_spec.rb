require 'rails_helper'

RSpec.describe "weeks/new", type: :view do
  before(:each) do
    assign(:week, Week.new(
      :sequence => 1,
      :season => nil
    ))
  end

  it "renders new week form" do
    render

    assert_select "form[action=?][method=?]", weeks_path, "post" do

      assert_select "input#week_sequence[name=?]", "week[sequence]"

      assert_select "input#week_season_id[name=?]", "week[season_id]"
    end
  end
end
