require 'test_helper'

class LeisuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leisure = leisures(:one)
  end

  test "should get index" do
    get leisures_url
    assert_response :success
  end

  test "should get new" do
    get new_leisure_url
    assert_response :success
  end

  test "should create leisure" do
    assert_difference('Leisure.count') do
      post leisures_url, params: { leisure: { leisure_name: @leisure.leisure_name, leisure_type_id: @leisure.leisure_type_id, person_id: @leisure.person_id } }
    end

    assert_redirected_to leisure_url(Leisure.last)
  end

  test "should show leisure" do
    get leisure_url(@leisure)
    assert_response :success
  end

  test "should get edit" do
    get edit_leisure_url(@leisure)
    assert_response :success
  end

  test "should update leisure" do
    patch leisure_url(@leisure), params: { leisure: { leisure_name: @leisure.leisure_name, leisure_type_id: @leisure.leisure_type_id, person_id: @leisure.person_id } }
    assert_redirected_to leisure_url(@leisure)
  end

  test "should destroy leisure" do
    assert_difference('Leisure.count', -1) do
      delete leisure_url(@leisure)
    end

    assert_redirected_to leisures_url
  end
end
