require 'test_helper'

class AdminArrivalRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_arrival_records_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_arrival_records_new_url
    assert_response :success
  end

end
