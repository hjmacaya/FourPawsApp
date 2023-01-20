require "test_helper"

class OwnerPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get owner_home" do
    get owner_pages_owner_home_url
    assert_response :success
  end
end
