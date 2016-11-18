require 'rails_helper'

RSpec.describe "admin/averages/edit", type: :view do
  before(:each) do
    @admin_average = assign(:admin_average, Admin::Average.create!())
  end

  it "renders the edit admin_average form" do
    render

    assert_select "form[action=?][method=?]", admin_average_path(@admin_average), "post" do
    end
  end
end
