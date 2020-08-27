require 'test_helper'

class Users::TodoItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_todo_items_index_url
    assert_response :success
  end

end
