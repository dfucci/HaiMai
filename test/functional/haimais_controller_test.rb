require 'test_helper'

class HaimaisControllerTest < ActionController::TestCase
  setup do
    @haimai = haimais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haimais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haimai" do
    assert_difference('Haimai.count') do
      post :create, :haimai => @haimai.attributes
    end

    assert_redirected_to haimai_path(assigns(:haimai))
  end

  test "should show haimai" do
    get :show, :id => @haimai.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @haimai.to_param
    assert_response :success
  end

  test "should update haimai" do
    put :update, :id => @haimai.to_param, :haimai => @haimai.attributes
    assert_redirected_to haimai_path(assigns(:haimai))
  end

  test "should destroy haimai" do
    assert_difference('Haimai.count', -1) do
      delete :destroy, :id => @haimai.to_param
    end

    assert_redirected_to haimais_path
  end
end
