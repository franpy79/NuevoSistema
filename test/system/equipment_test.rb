require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "creating a Equipment" do
    visit equipment_url
    click_on "New Equipment"

    fill_in "Ram memory", with: @equipment.Ram_memory
    fill_in "Hard disk", with: @equipment.hard_disk
    fill_in "Labelled", with: @equipment.labelled
    fill_in "Motherboard", with: @equipment.motherboard
    fill_in "Print machine", with: @equipment.print_machine
    fill_in "Processor", with: @equipment.processor
    fill_in "So", with: @equipment.so
    fill_in "Type equipment", with: @equipment.type_equipment
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "updating a Equipment" do
    visit equipment_url
    click_on "Edit", match: :first

    fill_in "Ram memory", with: @equipment.Ram_memory
    fill_in "Hard disk", with: @equipment.hard_disk
    fill_in "Labelled", with: @equipment.labelled
    fill_in "Motherboard", with: @equipment.motherboard
    fill_in "Print machine", with: @equipment.print_machine
    fill_in "Processor", with: @equipment.processor
    fill_in "So", with: @equipment.so
    fill_in "Type equipment", with: @equipment.type_equipment
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipment" do
    visit equipment_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipment was successfully destroyed"
  end
end
