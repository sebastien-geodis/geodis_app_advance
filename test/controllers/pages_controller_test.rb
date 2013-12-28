require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

  test "should get monitoring" do
    get :monitoring
    assert_response :success
  end

  test "should get infos_vip" do
    get :infos_vip
    assert_response :success
  end

end
