require 'test_helper'

class RifasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rifa = rifas(:one)
  end

  test "should get index" do
    get rifas_url
    assert_response :success
  end

  test "should get new" do
    get new_rifa_url
    assert_response :success
  end

  test "should create rifa" do
    assert_difference('Rifa.count') do
      post rifas_url, params: { rifa: { fecha_inicio: @rifa.fecha_inicio, fecha_termino: @rifa.fecha_termino, r_id: @rifa.r_id, titulo: @rifa.titulo } }
    end

    assert_redirected_to rifa_url(Rifa.last)
  end

  test "should show rifa" do
    get rifa_url(@rifa)
    assert_response :success
  end

  test "should get edit" do
    get edit_rifa_url(@rifa)
    assert_response :success
  end

  test "should update rifa" do
    patch rifa_url(@rifa), params: { rifa: { fecha_inicio: @rifa.fecha_inicio, fecha_termino: @rifa.fecha_termino, r_id: @rifa.r_id, titulo: @rifa.titulo } }
    assert_redirected_to rifa_url(@rifa)
  end

  test "should destroy rifa" do
    assert_difference('Rifa.count', -1) do
      delete rifa_url(@rifa)
    end

    assert_redirected_to rifas_url
  end
end
