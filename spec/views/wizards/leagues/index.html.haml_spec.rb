require 'rails_helper'

RSpec.describe "wizards/leagues/index", type: :view do
  before(:each) do
    assign(:wizards_leagues, [
      Wizards::League.create!(),
      Wizards::League.create!()
    ])
  end

  it "renders a list of wizards/leagues" do
    render
  end
end
