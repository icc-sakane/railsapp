require 'test_helper'

class KimatusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kimatu = kimatus(:one)
  end

  test "should get index" do
    get kimatus_url
    assert_response :success
  end

  test "should get new" do
    get new_kimatu_url
    assert_response :success
  end

  test "should create kimatu" do
    assert_difference('Kimatu.count') do
      post kimatus_url, params: { kimatu: { eigo: @kimatu.eigo, gakusei_id: @kimatu.gakusei_id, kbn: @kimatu.kbn, kokugo: @kimatu.kokugo, sugaku: @kimatu.sugaku } }
    end

    assert_redirected_to kimatu_url(Kimatu.last)
  end

  test "should show kimatu" do
    get kimatu_url(@kimatu)
    assert_response :success
  end

  test "should get edit" do
    get edit_kimatu_url(@kimatu)
    assert_response :success
  end

  test "should update kimatu" do
    patch kimatu_url(@kimatu), params: { kimatu: { eigo: @kimatu.eigo, gakusei_id: @kimatu.gakusei_id, kbn: @kimatu.kbn, kokugo: @kimatu.kokugo, sugaku: @kimatu.sugaku } }
    assert_redirected_to kimatu_url(@kimatu)
  end

  test "should destroy kimatu" do
    assert_difference('Kimatu.count', -1) do
      delete kimatu_url(@kimatu)
    end

    assert_redirected_to kimatus_url
  end
end
