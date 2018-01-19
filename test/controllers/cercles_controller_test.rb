require 'test_helper'

class CerclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cercle = cercles(:one)
  end

  test "should get index" do
    get cercles_url
    assert_response :success
  end

  test "should get new" do
    get new_cercle_url
    assert_response :success
  end

  test "should create cercle" do
    assert_difference('Cercle.count') do
      post cercles_url, params: { cercle: { cercle_name: @cercle.cercle_name, cercle_name_short: @cercle.cercle_name_short, code: @cercle.code, latitude: @cercle.latitude, longitude: @cercle.longitude, position: @cercle.position, regions_id: @cercle.regions_id } }
    end

    assert_redirected_to cercle_url(Cercle.last)
  end

  test "should show cercle" do
    get cercle_url(@cercle)
    assert_response :success
  end

  test "should get edit" do
    get edit_cercle_url(@cercle)
    assert_response :success
  end

  test "should update cercle" do
    patch cercle_url(@cercle), params: { cercle: { cercle_name: @cercle.cercle_name, cercle_name_short: @cercle.cercle_name_short, code: @cercle.code, latitude: @cercle.latitude, longitude: @cercle.longitude, position: @cercle.position, regions_id: @cercle.regions_id } }
    assert_redirected_to cercle_url(@cercle)
  end

  test "should destroy cercle" do
    assert_difference('Cercle.count', -1) do
      delete cercle_url(@cercle)
    end

    assert_redirected_to cercles_url
  end
end
