require 'rails_helper'

RSpec.describe "wizards/leagues/show", type: :view do
  before(:each) do
    @wizards_league = assign(:wizards_league, Wizards::League.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
