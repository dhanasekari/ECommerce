require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
 test "login with invalid information" do
    get login_path
    assert_template 'login/index'
    post login_path, params: { login: { name: "", password: "" } }
    assert_template 'login/index'
    assert_not flash.empty?
    get index_path
    assert flash.empty?
  end
end
