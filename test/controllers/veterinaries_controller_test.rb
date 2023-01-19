require "test_helper"

class VeterinariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get veterinaries_index_url
    assert_response :success
  end
end
