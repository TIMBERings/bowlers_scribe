require 'rails_helper'

RSpec.describe "admin/weeks/edit", type: :view do
  before(:each) do
    @admin_week = assign(:admin_week, Admin::Week.create!())
  end

  it "renders the edit admin_week form" do
    render

    assert_select "form[action=?][method=?]", admin_week_path(@admin_week), "post" do
    end
  end
end
