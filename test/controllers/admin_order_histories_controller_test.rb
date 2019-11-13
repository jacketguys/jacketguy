require 'test_helper'

class AdminOrderHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_order_histories_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_order_histories_show_url
    assert_response :success
  end

end
