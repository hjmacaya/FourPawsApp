require "test_helper"

class VetPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get vet_home" do
    get vet_pages_vet_home_url
    assert_response :success
  end
end
