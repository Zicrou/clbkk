require "application_system_test_case"

class ImmobiliersTest < ApplicationSystemTestCase
  setup do
    @immobilier = immobiliers(:one)
  end

  test "visiting the index" do
    visit immobiliers_url
    assert_selector "h1", text: "Immobiliers"
  end

  test "should create immobilier" do
    visit immobiliers_url
    click_on "New immobilier"

    fill_in "Adresse", with: @immobilier.adresse
    fill_in "Chambre", with: @immobilier.chambre
    fill_in "Contact", with: @immobilier.contact
    fill_in "Description", with: @immobilier.description
    fill_in "Etage", with: @immobilier.etage
    fill_in "Etat", with: @immobilier.etat
    fill_in "Integer", with: @immobilier.integer
    fill_in "Prix", with: @immobilier.prix
    fill_in "Region", with: @immobilier.region
    fill_in "Rez de chausse", with: @immobilier.rez_de_chausse
    fill_in "Salle de bains", with: @immobilier.salle_de_bains
    fill_in "Statut", with: @immobilier.statut
    fill_in "Terasse", with: @immobilier.terasse
    fill_in "Titre", with: @immobilier.titre
    click_on "Create Immobilier"

    assert_text "Immobilier was successfully created"
    click_on "Back"
  end

  test "should update Immobilier" do
    visit immobilier_url(@immobilier)
    click_on "Edit this immobilier", match: :first

    fill_in "Adresse", with: @immobilier.adresse
    fill_in "Chambre", with: @immobilier.chambre
    fill_in "Contact", with: @immobilier.contact
    fill_in "Description", with: @immobilier.description
    fill_in "Etage", with: @immobilier.etage
    fill_in "Etat", with: @immobilier.etat
    fill_in "Integer", with: @immobilier.integer
    fill_in "Prix", with: @immobilier.prix
    fill_in "Region", with: @immobilier.region
    fill_in "Rez de chausse", with: @immobilier.rez_de_chausse
    fill_in "Salle de bains", with: @immobilier.salle_de_bains
    fill_in "Statut", with: @immobilier.statut
    fill_in "Terasse", with: @immobilier.terasse
    fill_in "Titre", with: @immobilier.titre
    click_on "Update Immobilier"

    assert_text "Immobilier was successfully updated"
    click_on "Back"
  end

  test "should destroy Immobilier" do
    visit immobilier_url(@immobilier)
    click_on "Destroy this immobilier", match: :first

    assert_text "Immobilier was successfully destroyed"
  end
end
