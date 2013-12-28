require 'test_helper'

class MonitoringStatusesControllerTest < ActionController::TestCase
  setup do
    @monitoring_status = monitoring_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitoring_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoring_status" do
    assert_difference('MonitoringStatus.count') do
      post :create, monitoring_status: { name: @monitoring_status.name }
    end

    assert_redirected_to monitoring_status_path(assigns(:monitoring_status))
  end

  test "should show monitoring_status" do
    get :show, id: @monitoring_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoring_status
    assert_response :success
  end

  test "should update monitoring_status" do
    patch :update, id: @monitoring_status, monitoring_status: { name: @monitoring_status.name }
    assert_redirected_to monitoring_status_path(assigns(:monitoring_status))
  end

  test "should destroy monitoring_status" do
    assert_difference('MonitoringStatus.count', -1) do
      delete :destroy, id: @monitoring_status
    end

    assert_redirected_to monitoring_statuses_path
  end
end
