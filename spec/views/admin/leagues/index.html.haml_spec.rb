require 'rails_helper'

RSpec.describe "admin/leagues/index", type: :view do
  before(:each) do
    assign(:admin_leagues, [
      Admin::League.create!(),
      Admin::League.create!()
    ])
  end

  it "renders a list of admin/leagues" do
    render
  end
end
