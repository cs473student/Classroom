require 'test_helper'

class UsersAccessesControllerTest < ActionController::TestCase
  setup do
    @users_access = users_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_access" do
    assert_difference('UsersAccess.count') do
      post :create, :users_access => @users_access.attributes
    end

    assert_redirected_to users_access_path(assigns(:users_access))
  end

  test "should show users_access" do
    get :show, :id => @users_access.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @users_access.to_param
    assert_response :success
  end

  test "should update users_access" do
    put :update, :id => @users_access.to_param, :users_access => @users_access.attributes
    assert_redirected_to users_access_path(assigns(:users_access))
  end

  test "should destroy users_access" do
    assert_difference('UsersAccess.count', -1) do
      delete :destroy, :id => @users_access.to_param
    end

    assert_redirected_to users_accesses_path
  end
end
