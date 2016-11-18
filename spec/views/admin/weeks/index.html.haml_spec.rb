require 'rails_helper'

RSpec.describe "admin/weeks/index", type: :view do
  before(:each) do
    assign(:admin_weeks, [
      Admin::Week.create!(),
      Admin::Week.create!()
    ])
  end

  it "renders a list of admin/weeks" do
    render
  end
end
