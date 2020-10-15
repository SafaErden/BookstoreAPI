require 'test_helper'

class BoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boo = boos(:one)
  end

  test "should get index" do
    get boos_url
    assert_response :success
  end

  test "should get new" do
    get new_boo_url
    assert_response :success
  end

  test "should create boo" do
    assert_difference('Boo.count') do
      post boos_url, params: { boo: { category: @boo.category, title: @boo.title } }
    end

    assert_redirected_to boo_url(Boo.last)
  end

  test "should show boo" do
    get boo_url(@boo)
    assert_response :success
  end

  test "should get edit" do
    get edit_boo_url(@boo)
    assert_response :success
  end

  test "should update boo" do
    patch boo_url(@boo), params: { boo: { category: @boo.category, title: @boo.title } }
    assert_redirected_to boo_url(@boo)
  end

  test "should destroy boo" do
    assert_difference('Boo.count', -1) do
      delete boo_url(@boo)
    end

    assert_redirected_to boos_url
  end
end
