require "test_helper"

class RunnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get runners_index_url
    assert_response :success
  end

  test "should get show" do
    get runners_show_url
    assert_response :success
  end

  test "should get new" do
    get runners_new_url
    assert_response :success
  end

  test "should get create" do
    get runners_create_url
    assert_response :success
  end

  test "should get edit" do
    get runners_edit_url
    assert_response :success
  end

  test "should get update" do
    get runners_update_url
    assert_response :success
  end

  test "should get destroy" do
    get runners_destroy_url
    assert_response :success
  end
end
