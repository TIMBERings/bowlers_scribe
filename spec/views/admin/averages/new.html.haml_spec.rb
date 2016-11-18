require 'rails_helper'

RSpec.describe "admin/averages/new", type: :view do
  before(:each) do
    assign(:admin_average, Admin::Average.new())
  end

  it "renders new admin_average form" do
    render

    assert_select "form[action=?][method=?]", admin_averages_path, "post" do
    end
  end
end
