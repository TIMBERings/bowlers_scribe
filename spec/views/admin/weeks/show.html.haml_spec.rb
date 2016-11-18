require 'rails_helper'

RSpec.describe "admin/weeks/show", type: :view do
  before(:each) do
    @admin_week = assign(:admin_week, Admin::Week.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
