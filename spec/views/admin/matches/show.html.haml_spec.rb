require 'rails_helper'

RSpec.describe "admin/matches/show", type: :view do
  before(:each) do
    @admin_match = assign(:admin_match, Admin::Match.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
