require "test_helper"

class SrtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @srt = srts(:one)
  end

  test "should get index" do
    get srts_url
    assert_response :success
  end

  test "should get new" do
    get new_srt_url
    assert_response :success
  end

  test "should create srt" do
    assert_difference('Srt.count') do
      post srts_url, params: { srt: { link_name: @srt.link_name, paste_link: @srt.paste_link } }
    end

    assert_redirected_to srt_url(Srt.last)
  end

  test "should show srt" do
    get srt_url(@srt)
    assert_response :success
  end

  test "should get edit" do
    get edit_srt_url(@srt)
    assert_response :success
  end

  test "should update srt" do
    patch srt_url(@srt), params: { srt: { link_name: @srt.link_name, paste_link: @srt.paste_link } }
    assert_redirected_to srt_url(@srt)
  end

  test "should destroy srt" do
    assert_difference('Srt.count', -1) do
      delete srt_url(@srt)
    end

    assert_redirected_to srts_url
  end
end
