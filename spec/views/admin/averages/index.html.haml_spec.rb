require 'rails_helper'

RSpec.describe "admin/averages/index", type: :view do
  before(:each) do
    assign(:admin_averages, [
      Admin::Average.create!(),
      Admin::Average.create!()
    ])
  end

  it "renders a list of admin/averages" do
    render
  end
end
