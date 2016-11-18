require 'rails_helper'

RSpec.describe "leagues/new", type: :view do
  before(:each) do
    assign(:league, League.new(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders new league form" do
    render

    assert_select "form[action=?][method=?]", leagues_path, "post" do

      assert_select "input#league_user_id[name=?]", "league[user_id]"

      assert_select "input#league_name[name=?]", "league[name]"
    end
  end
end
