require 'test_helper'

class MatthewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matthew = matthews(:one)
  end

  test "should get index" do
    get matthews_url
    assert_response :success
  end

  test "should get new" do
    get new_matthew_url
    assert_response :success
  end

  test "should create matthew" do
    assert_difference('Matthew.count') do
      post matthews_url, params: { matthew: { login: @matthew.login } }
    end

    assert_redirected_to matthew_url(Matthew.last)
  end

  test "should show matthew" do
    get matthew_url(@matthew)
    assert_response :success
  end

  test "should get edit" do
    get edit_matthew_url(@matthew)
    assert_response :success
  end

  test "should update matthew" do
    patch matthew_url(@matthew), params: { matthew: { login: @matthew.login } }
    assert_redirected_to matthew_url(@matthew)
  end

  test "should destroy matthew" do
    assert_difference('Matthew.count', -1) do
      delete matthew_url(@matthew)
    end

    assert_redirected_to matthews_url
  end
end
