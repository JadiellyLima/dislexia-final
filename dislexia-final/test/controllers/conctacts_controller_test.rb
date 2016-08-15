require 'test_helper'

class ConctactsControllerTest < ActionController::TestCase
  setup do
    @conctact = conctacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conctacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conctact" do
    assert_difference('Conctact.count') do
      post :create, conctact: { email: @conctact.email, msg: @conctact.msg, name: @conctact.name }
    end

    assert_redirected_to conctact_path(assigns(:conctact))
  end

  test "should show conctact" do
    get :show, id: @conctact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conctact
    assert_response :success
  end

  test "should update conctact" do
    patch :update, id: @conctact, conctact: { email: @conctact.email, msg: @conctact.msg, name: @conctact.name }
    assert_redirected_to conctact_path(assigns(:conctact))
  end

  test "should destroy conctact" do
    assert_difference('Conctact.count', -1) do
      delete :destroy, id: @conctact
    end

    assert_redirected_to conctacts_path
  end
end
