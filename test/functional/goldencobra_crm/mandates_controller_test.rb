require 'test_helper'

module GoldencobraCrm
  class MandatesControllerTest < ActionController::TestCase
    setup do
      @mandate = mandates(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:mandates)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create mandate" do
      assert_difference('Mandate.count') do
        post :create, mandate: { external_id: @mandate.external_id, reference_id: @mandate.reference_id, server_ip: @mandate.server_ip, server_name: @mandate.server_name }
      end
  
      assert_redirected_to mandate_path(assigns(:mandate))
    end
  
    test "should show mandate" do
      get :show, id: @mandate
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @mandate
      assert_response :success
    end
  
    test "should update mandate" do
      put :update, id: @mandate, mandate: { external_id: @mandate.external_id, reference_id: @mandate.reference_id, server_ip: @mandate.server_ip, server_name: @mandate.server_name }
      assert_redirected_to mandate_path(assigns(:mandate))
    end
  
    test "should destroy mandate" do
      assert_difference('Mandate.count', -1) do
        delete :destroy, id: @mandate
      end
  
      assert_redirected_to mandates_path
    end
  end
end
