require 'test_helper'

class GakuseisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gakusei = gakuseis(:one)
  end

  test "should get index" do
    get gakuseis_url
    assert_response :success
  end

  test "should get new" do
    get new_gakusei_url
    assert_response :success
  end

  test "should create gakusei" do
    assert_difference('Gakusei.count') do
      post gakuseis_url, params: { gakusei: { age: @gakusei.age, gakusei_no: @gakusei.gakusei_no, name: @gakusei.name } }
    end

    assert_redirected_to gakusei_url(Gakusei.last)
  end

  test "should show gakusei" do
    get gakusei_url(@gakusei)
    assert_response :success
  end

  test "should get edit" do
    get edit_gakusei_url(@gakusei)
    assert_response :success
  end

  test "should update gakusei" do
    patch gakusei_url(@gakusei), params: { gakusei: { age: @gakusei.age, gakusei_no: @gakusei.gakusei_no, name: @gakusei.name } }
    assert_redirected_to gakusei_url(@gakusei)
  end

  test "should destroy gakusei" do
    assert_difference('Gakusei.count', -1) do
      delete gakusei_url(@gakusei)
    end

    assert_redirected_to gakuseis_url
  end
end
