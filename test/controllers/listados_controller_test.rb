require "test_helper"

class ListadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listado = listados(:one)
  end

  test "should get index" do
    get listados_url
    assert_response :success
  end

  test "should get new" do
    get new_listado_url
    assert_response :success
  end

  test "should create listado" do
    assert_difference('Listado.count') do
      post listados_url, params: { listado: { departament_id: @listado.departament_id, employee: @listado.employee, equipment_id: @listado.equipment_id, printer_id: @listado.printer_id } }
    end

    assert_redirected_to listado_url(Listado.last)
  end

  test "should show listado" do
    get listado_url(@listado)
    assert_response :success
  end

  test "should get edit" do
    get edit_listado_url(@listado)
    assert_response :success
  end

  test "should update listado" do
    patch listado_url(@listado), params: { listado: { departament_id: @listado.departament_id, employee: @listado.employee, equipment_id: @listado.equipment_id, printer_id: @listado.printer_id } }
    assert_redirected_to listado_url(@listado)
  end

  test "should destroy listado" do
    assert_difference('Listado.count', -1) do
      delete listado_url(@listado)
    end

    assert_redirected_to listados_url
  end
end
