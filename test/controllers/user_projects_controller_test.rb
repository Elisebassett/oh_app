require 'test_helper'

class UserProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_projects_index_url
    assert_response :success
  end

  test "should get new" do
    get user_projects_new_url
    assert_response :success
  end

  test "should get create" do
    get user_projects_create_url
    assert_response :success
  end

  test "should get show" do
    get user_projects_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_projects_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_projects_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_projects_destroy_url
    assert_response :success
  end

end
