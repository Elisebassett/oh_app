require 'test_helper'

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_tasks_create_url
    assert_response :success
  end

  test "should get update" do
    get user_tasks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_tasks_destroy_url
    assert_response :success
  end

end
