require 'test_helper'

class StyLiSHesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sty_li_sh = sty_li_shes(:one)
  end

  test "should get index" do
    get sty_li_shes_url
    assert_response :success
  end

  test "should get new" do
    get new_sty_li_sh_url
    assert_response :success
  end

  test "should create sty_li_sh" do
    assert_difference('StyLiSh.count') do
      post sty_li_shes_url, params: { sty_li_sh: { author: @sty_li_sh.author, body: @sty_li_sh.body, title: @sty_li_sh.title } }
    end

    assert_redirected_to sty_li_sh_url(StyLiSh.last)
  end

  test "should show sty_li_sh" do
    get sty_li_sh_url(@sty_li_sh)
    assert_response :success
  end

  test "should get edit" do
    get edit_sty_li_sh_url(@sty_li_sh)
    assert_response :success
  end

  test "should update sty_li_sh" do
    patch sty_li_sh_url(@sty_li_sh), params: { sty_li_sh: { author: @sty_li_sh.author, body: @sty_li_sh.body, title: @sty_li_sh.title } }
    assert_redirected_to sty_li_sh_url(@sty_li_sh)
  end

  test "should destroy sty_li_sh" do
    assert_difference('StyLiSh.count', -1) do
      delete sty_li_sh_url(@sty_li_sh)
    end

    assert_redirected_to sty_li_shes_url
  end
end
