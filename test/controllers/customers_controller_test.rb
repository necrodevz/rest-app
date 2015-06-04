require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
