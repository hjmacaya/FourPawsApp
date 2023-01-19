require "test_helper"

class AnimalTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get animal_types_new_url
    assert_response :success
  end

  test "should get create" do
    get animal_types_create_url
    assert_response :success
  end

  test "should get index" do
    get animal_types_index_url
    assert_response :success
  end

  test "should get show" do
    get animal_types_show_url
    assert_response :success
  end

  test "should get edit" do
    get animal_types_edit_url
    assert_response :success
  end

  test "should get update" do
    get animal_types_update_url
    assert_response :success
  end

  test "should get destroy" do
    get animal_types_destroy_url
    assert_response :success
  end
end
