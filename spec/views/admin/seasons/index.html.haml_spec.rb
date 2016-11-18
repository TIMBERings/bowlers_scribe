require 'rails_helper'

RSpec.describe "admin/seasons/index", type: :view do
  before(:each) do
    assign(:admin_seasons, [
      Admin::Season.create!(),
      Admin::Season.create!()
    ])
  end

  it "renders a list of admin/seasons" do
    render
  end
end
