require 'test_helper'

class LgseatingsControllerTest < ActionController::TestCase
  setup do
    @lgseating = lgseatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lgseatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lgseating" do
    assert_difference('Lgseating.count') do
      post :create, :lgseating => @lgseating.attributes
    end

    assert_redirected_to lgseating_path(assigns(:lgseating))
  end

  test "should show lgseating" do
    get :show, :id => @lgseating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lgseating.to_param
    assert_response :success
  end

  test "should update lgseating" do
    put :update, :id => @lgseating.to_param, :lgseating => @lgseating.attributes
    assert_redirected_to lgseating_path(assigns(:lgseating))
  end

  test "should destroy lgseating" do
    assert_difference('Lgseating.count', -1) do
      delete :destroy, :id => @lgseating.to_param
    end

    assert_redirected_to lgseatings_path
  end
end
