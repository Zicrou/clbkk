require "application_system_test_case"

class VehiculesTest < ApplicationSystemTestCase
  setup do
    @vehicule = vehicules(:one)
  end

  test "visiting the index" do
    visit vehicules_url
    assert_selector "h1", text: "Vehicules"
  end

  test "should create vehicule" do
    visit vehicules_url
    click_on "New vehicule"

    fill_in "Marque", with: @vehicule.marque
    fill_in "Modele", with: @vehicule.modele
    fill_in "Photo", with: @vehicule.photo
    fill_in "Price", with: @vehicule.price
    click_on "Create Vehicule"

    assert_text "Vehicule was successfully created"
    click_on "Back"
  end

  test "should update Vehicule" do
    visit vehicule_url(@vehicule)
    click_on "Edit this vehicule", match: :first

    fill_in "Marque", with: @vehicule.marque
    fill_in "Modele", with: @vehicule.modele
    fill_in "Photo", with: @vehicule.photo
    fill_in "Price", with: @vehicule.price
    click_on "Update Vehicule"

    assert_text "Vehicule was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicule" do
    visit vehicule_url(@vehicule)
    click_on "Destroy this vehicule", match: :first

    assert_text "Vehicule was successfully destroyed"
  end
end
