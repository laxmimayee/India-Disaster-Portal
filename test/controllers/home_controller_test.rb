require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get disaster" do
    get :disaster
    assert_response :success
  end

  test "should get apps" do
    get :apps
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

  test "should get network" do
    get :network
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get work" do
    get :work
    assert_response :success
  end

  test "should get valanteer" do
    get :valanteer
    assert_response :success
  end

  test "should get directory" do
    get :directory
    assert_response :success
  end

end
