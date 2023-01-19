require "test_helper"

class RecordTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get record_types_index_url
    assert_response :success
  end
end
