require 'rails_helper'

RSpec.describe "wizards/leagues/new", type: :view do
  before(:each) do
    assign(:wizards_league, Wizards::League.new())
  end

  it "renders new wizards_league form" do
    render

    assert_select "form[action=?][method=?]", wizards_leagues_path, "post" do
    end
  end
end
