require 'test_helper'

class SwanblogsControllerTest < ActionController::TestCase
  setup do
    @swanblog = swanblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swanblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swanblog" do
    assert_difference('Swanblog.count') do
      post :create, swanblog: { contest: @swanblog.contest, date: @swanblog.date, text: @swanblog.text, title: @swanblog.title }
    end

    assert_redirected_to swanblog_path(assigns(:swanblog))
  end

  test "should show swanblog" do
    get :show, id: @swanblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swanblog
    assert_response :success
  end

  test "should update swanblog" do
    patch :update, id: @swanblog, swanblog: { contest: @swanblog.contest, date: @swanblog.date, text: @swanblog.text, title: @swanblog.title }
    assert_redirected_to swanblog_path(assigns(:swanblog))
  end

  test "should destroy swanblog" do
    assert_difference('Swanblog.count', -1) do
      delete :destroy, id: @swanblog
    end

    assert_redirected_to swanblogs_path
  end
end
