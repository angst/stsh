require 'test_helper'

class ShorturlsControllerTest < ActionController::TestCase
  setup do
    @shorturl = shorturls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shorturls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shorturl" do
    assert_difference('Shorturl.count') do
      post :create, :shorturl => @shorturl.attributes
    end

    assert_redirected_to shorturl_path(assigns(:shorturl))
  end

  test "should show shorturl" do
    get :show, :id => @shorturl.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @shorturl.to_param
    assert_response :success
  end

  test "should update shorturl" do
    put :update, :id => @shorturl.to_param, :shorturl => @shorturl.attributes
    assert_redirected_to shorturl_path(assigns(:shorturl))
  end

  test "should destroy shorturl" do
    assert_difference('Shorturl.count', -1) do
      delete :destroy, :id => @shorturl.to_param
    end

    assert_redirected_to shorturls_path
  end
end
