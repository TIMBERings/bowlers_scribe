require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :match => nil,
      :score => 1
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_match_id[name=?]", "game[match_id]"

      assert_select "input#game_score[name=?]", "game[score]"
    end
  end
end
