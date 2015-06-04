require 'test_helper'

class ItemControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get put" do
    get :put
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
