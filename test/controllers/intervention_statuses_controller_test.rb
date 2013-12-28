require 'test_helper'

class InterventionStatusesControllerTest < ActionController::TestCase
  setup do
    @intervention_status = intervention_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intervention_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intervention_status" do
    assert_difference('InterventionStatus.count') do
      post :create, intervention_status: { name: @intervention_status.name }
    end

    assert_redirected_to intervention_status_path(assigns(:intervention_status))
  end

  test "should show intervention_status" do
    get :show, id: @intervention_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intervention_status
    assert_response :success
  end

  test "should update intervention_status" do
    patch :update, id: @intervention_status, intervention_status: { name: @intervention_status.name }
    assert_redirected_to intervention_status_path(assigns(:intervention_status))
  end

  test "should destroy intervention_status" do
    assert_difference('InterventionStatus.count', -1) do
      delete :destroy, id: @intervention_status
    end

    assert_redirected_to intervention_statuses_path
  end
end
