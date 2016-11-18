require 'rails_helper'

RSpec.describe "admin/matches/index", type: :view do
  before(:each) do
    assign(:admin_matches, [
      Admin::Match.create!(),
      Admin::Match.create!()
    ])
  end

  it "renders a list of admin/matches" do
    render
  end
end
