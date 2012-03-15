require 'test_helper'

class MyMailsControllerTest < ActionController::TestCase
  setup do
    @my_mail = my_mails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_mails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_mail" do
    assert_difference('MyMail.count') do
      post :create, my_mail: @my_mail.attributes
    end

    assert_redirected_to my_mail_path(assigns(:my_mail))
  end

  test "should show my_mail" do
    get :show, id: @my_mail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_mail.to_param
    assert_response :success
  end

  test "should update my_mail" do
    put :update, id: @my_mail.to_param, my_mail: @my_mail.attributes
    assert_redirected_to my_mail_path(assigns(:my_mail))
  end

  test "should destroy my_mail" do
    assert_difference('MyMail.count', -1) do
      delete :destroy, id: @my_mail.to_param
    end

    assert_redirected_to my_mails_path
  end
end
