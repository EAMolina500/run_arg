require "test_helper"

class RaceResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get race_results_index_url
    assert_response :success
  end

  test "should get show" do
    get race_results_show_url
    assert_response :success
  end

  test "should get new" do
    get race_results_new_url
    assert_response :success
  end

  test "should get create" do
    get race_results_create_url
    assert_response :success
  end

  test "should get edit" do
    get race_results_edit_url
    assert_response :success
  end

  test "should get update" do
    get race_results_update_url
    assert_response :success
  end

  test "should get destroy" do
    get race_results_destroy_url
    assert_response :success
  end
end
