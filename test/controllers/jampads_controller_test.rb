require 'test_helper'

class JampadsControllerTest < ActionController::TestCase
  test "should get jampad_home" do
    get :jampad_home
    assert_response :success
  end

  test "should get partner_with_us" do
    get :partner_with_us
    assert_response :success
  end

  test "should get jampad_show" do
    get :jampad_show
    assert_response :success
  end

end
