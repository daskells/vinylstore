require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get register" do
    get static_pages_register_url
    assert_response :success
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
  end

  test "should get profile" do
    get static_pages_profile_url
    assert_response :success
  end

  test "should get catalog" do
    get static_pages_catalog_url
    assert_response :success
  end

  test "should get search" do
    get static_pages_search_url
    assert_response :success
  end

  test "should get cart" do
    get static_pages_cart_url
    assert_response :success
  end

  test "should get checkout" do
    get static_pages_checkout_url
    assert_response :success
  end

  test "should get confirmation" do
    get static_pages_confirmation_url
    assert_response :success
  end

end
