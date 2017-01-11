require 'test_helper'

class AdministratorControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

end
