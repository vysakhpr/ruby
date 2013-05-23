require 'test_helper'

class CecControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get admin1" do
    get :admin1
    assert_response :success
  end

  test "should get admin2" do
    get :admin2
    assert_response :success
  end

  test "should get admin3" do
    get :admin3
    assert_response :success
  end

  test "should get staff" do
    get :staff
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

end
