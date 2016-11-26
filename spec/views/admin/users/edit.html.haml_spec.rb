require 'rails_helper'

RSpec.describe "admin/users/edit", type: :view do
  before(:each) do
    @admin_user = assign(:admin_user, Admin::User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_user_path(@admin_user), "post" do

      assert_select "input#admin_user_first_name[name=?]", "admin_user[first_name]"

      assert_select "input#admin_user_last_name[name=?]", "admin_user[last_name]"

      assert_select "input#admin_user_email[name=?]", "admin_user[email]"
    end
  end
end
