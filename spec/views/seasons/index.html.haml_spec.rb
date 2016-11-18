require 'rails_helper'

RSpec.describe "seasons/index", type: :view do
  before(:each) do
    assign(:seasons, [
      Season.create!(
        :league => nil,
        :year => 2,
        :day => 3,
        :number_of_weeks => 4,
        :roll_off_weeks => 5
      ),
      Season.create!(
        :league => nil,
        :year => 2,
        :day => 3,
        :number_of_weeks => 4,
        :roll_off_weeks => 5
      )
    ])
  end

  it "renders a list of seasons" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
