require 'rails_helper'

RSpec.describe "averages/edit", type: :view do
  before(:each) do
    @average = assign(:average, Average.create!(
      :average => 1.5,
      :season => nil,
      :member => nil
    ))
  end

  it "renders the edit average form" do
    render

    assert_select "form[action=?][method=?]", average_path(@average), "post" do

      assert_select "input#average_average[name=?]", "average[average]"

      assert_select "input#average_season_id[name=?]", "average[season_id]"

      assert_select "input#average_member_id[name=?]", "average[member_id]"
    end
  end
end
