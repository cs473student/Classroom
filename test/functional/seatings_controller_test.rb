require 'test_helper'

class SeatingsControllerTest < ActionController::TestCase
  setup do
    @seating = seatings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seatings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seating" do
    assert_difference('Seating.count') do
      post :create, :seating => @seating.attributes
    end

    assert_redirected_to seating_path(assigns(:seating))
  end

  test "should show seating" do
    get :show, :id => @seating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @seating.to_param
    assert_response :success
  end

  test "should update seating" do
    put :update, :id => @seating.to_param, :seating => @seating.attributes
    assert_redirected_to seating_path(assigns(:seating))
  end

  test "should destroy seating" do
    assert_difference('Seating.count', -1) do
      delete :destroy, :id => @seating.to_param
    end

    assert_redirected_to seatings_path
  end
end
