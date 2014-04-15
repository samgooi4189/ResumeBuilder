require 'test_helper'

class InformationControllerTest < ActionController::TestCase
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:information)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post :create, information: { address_1: @information.address_1, address_2: @information.address_2, b_phone: @information.b_phone, city_state_zip: @information.city_state_zip, email: @information.email, h_phone: @information.h_phone, name: @information.name, resume_id: @information.resume_id }
    end

    assert_redirected_to information_path(assigns(:information))
  end

  test "should show information" do
    get :show, id: @information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @information
    assert_response :success
  end

  test "should update information" do
    patch :update, id: @information, information: { address_1: @information.address_1, address_2: @information.address_2, b_phone: @information.b_phone, city_state_zip: @information.city_state_zip, email: @information.email, h_phone: @information.h_phone, name: @information.name, resume_id: @information.resume_id }
    assert_redirected_to information_path(assigns(:information))
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete :destroy, id: @information
    end

    assert_redirected_to information_index_path
  end
end
