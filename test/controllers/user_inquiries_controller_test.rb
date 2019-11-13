require 'test_helper'

class UserInquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_inquiries_new_url
    assert_response :success
  end

  test "should get complete" do
    get user_inquiries_complete_url
    assert_response :success
  end

end
