require 'test_helper'

class EthnicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ethnic = ethnics(:one)
  end

  test "should get index" do
    get ethnics_url
    assert_response :success
  end

  test "should get new" do
    get new_ethnic_url
    assert_response :success
  end

  test "should create ethnic" do
    assert_difference('Ethnic.count') do
      post ethnics_url, params: { ethnic: { ethnic_name: @ethnic.ethnic_name } }
    end

    assert_redirected_to ethnic_url(Ethnic.last)
  end

  test "should show ethnic" do
    get ethnic_url(@ethnic)
    assert_response :success
  end

  test "should get edit" do
    get edit_ethnic_url(@ethnic)
    assert_response :success
  end

  test "should update ethnic" do
    patch ethnic_url(@ethnic), params: { ethnic: { ethnic_name: @ethnic.ethnic_name } }
    assert_redirected_to ethnic_url(@ethnic)
  end

  test "should destroy ethnic" do
    assert_difference('Ethnic.count', -1) do
      delete ethnic_url(@ethnic)
    end

    assert_redirected_to ethnics_url
  end
end
