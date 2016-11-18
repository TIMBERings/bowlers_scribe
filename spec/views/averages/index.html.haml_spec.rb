require 'rails_helper'

RSpec.describe "averages/index", type: :view do
  before(:each) do
    assign(:averages, [
      Average.create!(
        :average => 2.5,
        :season => nil,
        :member => nil
      ),
      Average.create!(
        :average => 2.5,
        :season => nil,
        :member => nil
      )
    ])
  end

  it "renders a list of averages" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
