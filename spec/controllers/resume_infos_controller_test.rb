require 'test_helper'

class ResumeInfosControllerTest < ActionController::TestCase
  setup do
    @resume_info = resume_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resume_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume_info" do
    assert_difference('ResumeInfo.count') do
      post :create, resume_info: { user_id: @resume_info.user_id }
    end

    assert_redirected_to resume_info_path(assigns(:resume_info))
  end

  test "should show resume_info" do
    get :show, id: @resume_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume_info
    assert_response :success
  end

  test "should update resume_info" do
    patch :update, id: @resume_info, resume_info: { user_id: @resume_info.user_id }
    assert_redirected_to resume_info_path(assigns(:resume_info))
  end

  test "should destroy resume_info" do
    assert_difference('ResumeInfo.count', -1) do
      delete :destroy, id: @resume_info
    end

    assert_redirected_to resume_infos_path
  end
end
