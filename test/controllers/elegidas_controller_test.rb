require 'test_helper'

class ElegidasControllerTest < ActionController::TestCase
  setup do
    @elegida = elegidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elegidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elegida" do
    assert_difference('Elegida.count') do
      post :create, elegida: { pregunta_id: @elegida.pregunta_id, respuesta_id: @elegida.respuesta_id, usuario_id: @elegida.usuario_id }
    end

    assert_redirected_to elegida_path(assigns(:elegida))
  end

  test "should show elegida" do
    get :show, id: @elegida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elegida
    assert_response :success
  end

  test "should update elegida" do
    patch :update, id: @elegida, elegida: { pregunta_id: @elegida.pregunta_id, respuesta_id: @elegida.respuesta_id, usuario_id: @elegida.usuario_id }
    assert_redirected_to elegida_path(assigns(:elegida))
  end

  test "should destroy elegida" do
    assert_difference('Elegida.count', -1) do
      delete :destroy, id: @elegida
    end

    assert_redirected_to elegidas_path
  end
end
