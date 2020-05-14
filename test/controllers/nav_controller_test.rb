require 'test_helper'

class NavControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get nav_home_url
    assert_response :success
  end

  test "should get about" do
    get nav_about_url
    assert_response :success
  end

  test "should get contact" do
    get nav_contact_url
    assert_response :success
  end

end
