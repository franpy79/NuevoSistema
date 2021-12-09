require "application_system_test_case"

class ListadosTest < ApplicationSystemTestCase
  setup do
    @listado = listados(:one)
  end

  test "visiting the index" do
    visit listados_url
    assert_selector "h1", text: "Listados"
  end

  test "creating a Listado" do
    visit listados_url
    click_on "New Listado"

    fill_in "Departament", with: @listado.departament_id
    fill_in "Employee", with: @listado.employee
    fill_in "Equipment", with: @listado.equipment_id
    fill_in "Printer", with: @listado.printer_id
    click_on "Create Listado"

    assert_text "Listado was successfully created"
    click_on "Back"
  end

  test "updating a Listado" do
    visit listados_url
    click_on "Edit", match: :first

    fill_in "Departament", with: @listado.departament_id
    fill_in "Employee", with: @listado.employee
    fill_in "Equipment", with: @listado.equipment_id
    fill_in "Printer", with: @listado.printer_id
    click_on "Update Listado"

    assert_text "Listado was successfully updated"
    click_on "Back"
  end

  test "destroying a Listado" do
    visit listados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listado was successfully destroyed"
  end
end
