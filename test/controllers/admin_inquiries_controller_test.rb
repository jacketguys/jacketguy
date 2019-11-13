require 'test_helper'

class AdminInquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_inquiries_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_inquiries_show_url
    assert_response :success
  end

end
