require 'rails_helper'

RSpec.describe "wizards/leagues/edit", type: :view do
  before(:each) do
    @wizards_league = assign(:wizards_league, Wizards::League.create!())
  end

  it "renders the edit wizards_league form" do
    render

    assert_select "form[action=?][method=?]", wizards_league_path(@wizards_league), "post" do
    end
  end
end
