require 'test_helper'

class LoginseatingsControllerTest < ActionController::TestCase
  setup do
    @loginseating = loginseatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loginseatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loginseating" do
    assert_difference('Loginseating.count') do
      post :create, :loginseating => @loginseating.attributes
    end

    assert_redirected_to loginseating_path(assigns(:loginseating))
  end

  test "should show loginseating" do
    get :show, :id => @loginseating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @loginseating.to_param
    assert_response :success
  end

  test "should update loginseating" do
    put :update, :id => @loginseating.to_param, :loginseating => @loginseating.attributes
    assert_redirected_to loginseating_path(assigns(:loginseating))
  end

  test "should destroy loginseating" do
    assert_difference('Loginseating.count', -1) do
      delete :destroy, :id => @loginseating.to_param
    end

    assert_redirected_to loginseatings_path
  end
end
