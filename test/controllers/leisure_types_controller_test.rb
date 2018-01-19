require 'test_helper'

class LeisureTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leisure_type = leisure_types(:one)
  end

  test "should get index" do
    get leisure_types_url
    assert_response :success
  end

  test "should get new" do
    get new_leisure_type_url
    assert_response :success
  end

  test "should create leisure_type" do
    assert_difference('LeisureType.count') do
      post leisure_types_url, params: { leisure_type: { leisure_type_name: @leisure_type.leisure_type_name } }
    end

    assert_redirected_to leisure_type_url(LeisureType.last)
  end

  test "should show leisure_type" do
    get leisure_type_url(@leisure_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_leisure_type_url(@leisure_type)
    assert_response :success
  end

  test "should update leisure_type" do
    patch leisure_type_url(@leisure_type), params: { leisure_type: { leisure_type_name: @leisure_type.leisure_type_name } }
    assert_redirected_to leisure_type_url(@leisure_type)
  end

  test "should destroy leisure_type" do
    assert_difference('LeisureType.count', -1) do
      delete leisure_type_url(@leisure_type)
    end

    assert_redirected_to leisure_types_url
  end
end
