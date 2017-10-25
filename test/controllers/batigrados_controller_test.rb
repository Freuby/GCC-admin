require 'test_helper'

class BatigradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batigrado = batigrados(:one)
  end

  test "should get index" do
    get batigrados_url
    assert_response :success
  end

  test "should get new" do
    get new_batigrado_url
    assert_response :success
  end

  test "should create batigrado" do
    assert_difference('Batigrado.count') do
      post batigrados_url, params: { batigrado: { adr_soiree: @batigrado.adr_soiree, adresse: @batigrado.adresse, cp: @batigrado.cp, date_bat: @batigrado.date_bat, description: @batigrado.description, heur_soiree: @batigrado.heur_soiree, tar_rep1: @batigrado.tar_rep1, tar_rep2: @batigrado.tar_rep2, tar_rep3: @batigrado.tar_rep3, tar_soiree: @batigrado.tar_soiree, tarif1: @batigrado.tarif1, tarif2: @batigrado.tarif2, tarif_ext: @batigrado.tarif_ext, titre: @batigrado.titre, ville: @batigrado.ville } }
    end

    assert_redirected_to batigrado_url(Batigrado.last)
  end

  test "should show batigrado" do
    get batigrado_url(@batigrado)
    assert_response :success
  end

  test "should get edit" do
    get edit_batigrado_url(@batigrado)
    assert_response :success
  end

  test "should update batigrado" do
    patch batigrado_url(@batigrado), params: { batigrado: { adr_soiree: @batigrado.adr_soiree, adresse: @batigrado.adresse, cp: @batigrado.cp, date_bat: @batigrado.date_bat, description: @batigrado.description, heur_soiree: @batigrado.heur_soiree, tar_rep1: @batigrado.tar_rep1, tar_rep2: @batigrado.tar_rep2, tar_rep3: @batigrado.tar_rep3, tar_soiree: @batigrado.tar_soiree, tarif1: @batigrado.tarif1, tarif2: @batigrado.tarif2, tarif_ext: @batigrado.tarif_ext, titre: @batigrado.titre, ville: @batigrado.ville } }
    assert_redirected_to batigrado_url(@batigrado)
  end

  test "should destroy batigrado" do
    assert_difference('Batigrado.count', -1) do
      delete batigrado_url(@batigrado)
    end

    assert_redirected_to batigrados_url
  end
end
