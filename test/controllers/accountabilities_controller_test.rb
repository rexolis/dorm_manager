require 'test_helper'

class AccountabilitiesControllerTest < ActionController::TestCase
  setup do
    @accountability = accountabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accountabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accountability" do
    assert_difference('Accountability.count') do
      post :create, accountability: { description: @accountability.description, payment: @accountability.payment, type: @accountability.type, user_id: @accountability.user_id }
    end

    assert_redirected_to accountability_path(assigns(:accountability))
  end

  test "should show accountability" do
    get :show, id: @accountability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accountability
    assert_response :success
  end

  test "should update accountability" do
    patch :update, id: @accountability, accountability: { description: @accountability.description, payment: @accountability.payment, type: @accountability.type, user_id: @accountability.user_id }
    assert_redirected_to accountability_path(assigns(:accountability))
  end

  test "should destroy accountability" do
    assert_difference('Accountability.count', -1) do
      delete :destroy, id: @accountability
    end

    assert_redirected_to accountabilities_path
  end
end
