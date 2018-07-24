require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forms_index_url
    assert_response :success
  end

  test "should get new" do
    get forms_new_url
    assert_response :success
  end

  test "should get create" do
    get forms_create_url
    assert_response :success
  end

  test "should get show" do
    get forms_show_url
    assert_response :success
  end

  test "should get confirm" do
    get forms_confirm_url
    assert_response :success
  end

  test "should get edit" do
    get forms_edit_url
    assert_response :success
  end

end
