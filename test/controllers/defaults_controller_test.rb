require 'test_helper'

class DefaultsControllerTest < ActionController::TestCase
  setup do
    @default = defaults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defaults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create default" do
    assert_difference('Default.count') do
      post :create, default: {  }
    end

    assert_redirected_to default_path(assigns(:default))
  end

  test "should show default" do
    get :show, id: @default
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @default
    assert_response :success
  end

  test "should update default" do
    patch :update, id: @default, default: {  }
    assert_redirected_to default_path(assigns(:default))
  end

  test "should destroy default" do
    assert_difference('Default.count', -1) do
      delete :destroy, id: @default
    end

    assert_redirected_to defaults_path
  end
end
