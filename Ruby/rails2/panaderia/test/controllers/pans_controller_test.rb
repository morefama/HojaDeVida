require 'test_helper'

class PansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pan = pans(:one)
  end

  test "should get index" do
    get pans_url
    assert_response :success
  end

  test "should get new" do
    get new_pan_url
    assert_response :success
  end

  test "should create pan" do
    assert_difference('Pan.count') do
      post pans_url, params: { pan: { descption: @pan.descption, name: @pan.name, price: @pan.price } }
    end

    assert_redirected_to pan_url(Pan.last)
  end

  test "should show pan" do
    get pan_url(@pan)
    assert_response :success
  end

  test "should get edit" do
    get edit_pan_url(@pan)
    assert_response :success
  end

  test "should update pan" do
    patch pan_url(@pan), params: { pan: { descption: @pan.descption, name: @pan.name, price: @pan.price } }
    assert_redirected_to pan_url(@pan)
  end

  test "should destroy pan" do
    assert_difference('Pan.count', -1) do
      delete pan_url(@pan)
    end

    assert_redirected_to pans_url
  end
end
