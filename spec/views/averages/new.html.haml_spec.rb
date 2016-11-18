require 'rails_helper'

RSpec.describe "averages/new", type: :view do
  before(:each) do
    assign(:average, Average.new(
      :average => 1.5,
      :season => nil,
      :member => nil
    ))
  end

  it "renders new average form" do
    render

    assert_select "form[action=?][method=?]", averages_path, "post" do

      assert_select "input#average_average[name=?]", "average[average]"

      assert_select "input#average_season_id[name=?]", "average[season_id]"

      assert_select "input#average_member_id[name=?]", "average[member_id]"
    end
  end
end
