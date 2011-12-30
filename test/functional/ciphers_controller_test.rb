require 'test_helper'

class CiphersControllerTest < ActionController::TestCase
  setup do
    @cipher = ciphers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ciphers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cipher" do
    assert_difference('Cipher.count') do
      post :create, cipher: @cipher.attributes
    end

    assert_redirected_to cipher_path(assigns(:cipher))
  end

  test "should show cipher" do
    get :show, id: @cipher.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cipher.to_param
    assert_response :success
  end

  test "should update cipher" do
    put :update, id: @cipher.to_param, cipher: @cipher.attributes
    assert_redirected_to cipher_path(assigns(:cipher))
  end

  test "should destroy cipher" do
    assert_difference('Cipher.count', -1) do
      delete :destroy, id: @cipher.to_param
    end

    assert_redirected_to ciphers_path
  end
end
