require 'test_helper'

class UserPurchasesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_purchases_new_url
    assert_response :success
  end

  test "should get complete" do
    get user_purchases_complete_url
    assert_response :success
  end

end
