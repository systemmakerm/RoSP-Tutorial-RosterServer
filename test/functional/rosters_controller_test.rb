require 'test_helper'

class RostersControllerTest < ActionController::TestCase
  setup do
    @roster = rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roster" do
    assert_difference('Roster.count') do
      post :create, :roster => @roster.attributes
    end

    assert_redirected_to roster_path(assigns(:roster))
  end

  test "should show roster" do
    get :show, :id => @roster.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @roster.to_param
    assert_response :success
  end

  test "should update roster" do
    put :update, :id => @roster.to_param, :roster => @roster.attributes
    assert_redirected_to roster_path(assigns(:roster))
  end

  test "should destroy roster" do
    assert_difference('Roster.count', -1) do
      delete :destroy, :id => @roster.to_param
    end

    assert_redirected_to rosters_path
  end
end
