require 'rails_helper'

RSpec.describe "admin/seasons/show", type: :view do
  before(:each) do
    @admin_season = assign(:admin_season, Admin::Season.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
