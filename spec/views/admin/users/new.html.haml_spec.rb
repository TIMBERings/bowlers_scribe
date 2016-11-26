require 'rails_helper'

RSpec.describe "admin/users/new", type: :view do
  before(:each) do
    assign(:admin_user, Admin::User.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new admin_user form" do
    render

    assert_select "form[action=?][method=?]", admin_users_path, "post" do

      assert_select "input#admin_user_first_name[name=?]", "admin_user[first_name]"

      assert_select "input#admin_user_last_name[name=?]", "admin_user[last_name]"

      assert_select "input#admin_user_email[name=?]", "admin_user[email]"
    end
  end
end
