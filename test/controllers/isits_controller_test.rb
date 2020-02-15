require 'test_helper'

class IsitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @isit = isits(:one)
  end

  test "should get index" do
    get isits_url
    assert_response :success
  end

  test "should get new" do
    get new_isit_url
    assert_response :success
  end

  test "should create isit" do
    assert_difference('Isit.count') do
      post isits_url, params: { isit: { name: @isit.name } }
    end

    assert_redirected_to isit_url(Isit.last)
  end

  test "should show isit" do
    get isit_url(@isit)
    assert_response :success
  end

  test "should get edit" do
    get edit_isit_url(@isit)
    assert_response :success
  end

  test "should update isit" do
    patch isit_url(@isit), params: { isit: { name: @isit.name } }
    assert_redirected_to isit_url(@isit)
  end

  test "should destroy isit" do
    assert_difference('Isit.count', -1) do
      delete isit_url(@isit)
    end

    assert_redirected_to isits_url
  end
end
