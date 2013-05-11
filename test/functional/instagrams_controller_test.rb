require 'test_helper'

class InstagramsControllerTest < ActionController::TestCase
  setup do
    @instagram = instagrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instagrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instagram" do
    assert_difference('Instagram.count') do
      post :create, instagram: {  }
    end

    assert_redirected_to instagram_path(assigns(:instagram))
  end

  test "should show instagram" do
    get :show, id: @instagram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instagram
    assert_response :success
  end

  test "should update instagram" do
    put :update, id: @instagram, instagram: {  }
    assert_redirected_to instagram_path(assigns(:instagram))
  end

  test "should destroy instagram" do
    assert_difference('Instagram.count', -1) do
      delete :destroy, id: @instagram
    end

    assert_redirected_to instagrams_path
  end
end
