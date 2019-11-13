require 'test_helper'

class AdminReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_reviews_edit_url
    assert_response :success
  end

end
