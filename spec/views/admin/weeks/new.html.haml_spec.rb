require 'rails_helper'

RSpec.describe "admin/weeks/new", type: :view do
  before(:each) do
    assign(:admin_week, Admin::Week.new())
  end

  it "renders new admin_week form" do
    render

    assert_select "form[action=?][method=?]", admin_weeks_path, "post" do
    end
  end
end
