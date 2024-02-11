require "test_helper"

class ImmobiliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @immobilier = immobiliers(:one)
  end

  test "should get index" do
    get immobiliers_url
    assert_response :success
  end

  test "should get new" do
    get new_immobilier_url
    assert_response :success
  end

  test "should create immobilier" do
    assert_difference("Immobilier.count") do
      post immobiliers_url, params: { immobilier: { adresse: @immobilier.adresse, chambre: @immobilier.chambre, contact: @immobilier.contact, description: @immobilier.description, etage: @immobilier.etage, etat: @immobilier.etat, integer: @immobilier.integer, prix: @immobilier.prix, region: @immobilier.region, rez_de_chausse: @immobilier.rez_de_chausse, salle_de_bains: @immobilier.salle_de_bains, statut: @immobilier.statut, terasse: @immobilier.terasse, titre: @immobilier.titre } }
    end

    assert_redirected_to immobilier_url(Immobilier.last)
  end

  test "should show immobilier" do
    get immobilier_url(@immobilier)
    assert_response :success
  end

  test "should get edit" do
    get edit_immobilier_url(@immobilier)
    assert_response :success
  end

  test "should update immobilier" do
    patch immobilier_url(@immobilier), params: { immobilier: { adresse: @immobilier.adresse, chambre: @immobilier.chambre, contact: @immobilier.contact, description: @immobilier.description, etage: @immobilier.etage, etat: @immobilier.etat, integer: @immobilier.integer, prix: @immobilier.prix, region: @immobilier.region, rez_de_chausse: @immobilier.rez_de_chausse, salle_de_bains: @immobilier.salle_de_bains, statut: @immobilier.statut, terasse: @immobilier.terasse, titre: @immobilier.titre } }
    assert_redirected_to immobilier_url(@immobilier)
  end

  test "should destroy immobilier" do
    assert_difference("Immobilier.count", -1) do
      delete immobilier_url(@immobilier)
    end

    assert_redirected_to immobiliers_url
  end
end
