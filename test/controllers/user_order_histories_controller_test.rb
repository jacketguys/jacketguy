require 'test_helper'

class UserOrderHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_order_histories_show_url
    assert_response :success
  end

end
