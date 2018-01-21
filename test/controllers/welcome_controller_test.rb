require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get inconu" do
    get welcome_inconu_url
    assert_response :success
  end

end
