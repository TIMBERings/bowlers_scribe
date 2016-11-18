require 'rails_helper'

RSpec.describe "weeks/index", type: :view do
  before(:each) do
    assign(:weeks, [
      Week.create!(
        :sequence => 2,
        :season => nil
      ),
      Week.create!(
        :sequence => 2,
        :season => nil
      )
    ])
  end

  it "renders a list of weeks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
