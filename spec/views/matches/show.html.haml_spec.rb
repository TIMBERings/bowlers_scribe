require 'rails_helper'

RSpec.describe "matches/show", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :left_team => 2,
      :right_team => 3,
      :left_lane => 4,
      :right_lane => 5,
      :left_payment => 6,
      :right_payment => 7,
      :left_points_on => 8,
      :right_points_won => 9,
      :week => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(//)
  end
end
