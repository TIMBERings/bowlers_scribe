require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :match => nil,
      :score => 1
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_match_id[name=?]", "game[match_id]"

      assert_select "input#game_score[name=?]", "game[score]"
    end
  end
end
