require 'test_helper'

class LoggedinseatingsControllerTest < ActionController::TestCase
  setup do
    @loggedinseating = loggedinseatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loggedinseatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loggedinseating" do
    assert_difference('Loggedinseating.count') do
      post :create, :loggedinseating => @loggedinseating.attributes
    end

    assert_redirected_to loggedinseating_path(assigns(:loggedinseating))
  end

  test "should show loggedinseating" do
    get :show, :id => @loggedinseating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @loggedinseating.to_param
    assert_response :success
  end

  test "should update loggedinseating" do
    put :update, :id => @loggedinseating.to_param, :loggedinseating => @loggedinseating.attributes
    assert_redirected_to loggedinseating_path(assigns(:loggedinseating))
  end

  test "should destroy loggedinseating" do
    assert_difference('Loggedinseating.count', -1) do
      delete :destroy, :id => @loggedinseating.to_param
    end

    assert_redirected_to loggedinseatings_path
  end
end
