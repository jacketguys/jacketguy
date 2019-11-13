require 'test_helper'

class UserCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get user_carts_edit_url
    assert_response :success
  end

end
