require 'test_helper'

class ComBatigradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @com_batigrado = com_batigrados(:one)
  end

  test "should get index" do
    get com_batigrados_url
    assert_response :success
  end

  test "should get new" do
    get new_com_batigrado_url
    assert_response :success
  end

  test "should create com_batigrado" do
    assert_difference('ComBatigrado.count') do
      post com_batigrados_url, params: { com_batigrado: { bati1: @com_batigrado.bati1, bati2: @com_batigrado.bati2, email: @com_batigrado.email, gradup: @com_batigrado.gradup, montant: @com_batigrado.montant, nom: @com_batigrado.nom, nom_grupo: @com_batigrado.nom_grupo, prenom: @com_batigrado.prenom, reglt: @com_batigrado.reglt, repas1: @com_batigrado.repas1, repas2: @com_batigrado.repas2, repas3: @com_batigrado.repas3, soiree: @com_batigrado.soiree, tpant: @com_batigrado.tpant, ttshirt: @com_batigrado.ttshirt } }
    end

    assert_redirected_to com_batigrado_url(ComBatigrado.last)
  end

  test "should show com_batigrado" do
    get com_batigrado_url(@com_batigrado)
    assert_response :success
  end

  test "should get edit" do
    get edit_com_batigrado_url(@com_batigrado)
    assert_response :success
  end

  test "should update com_batigrado" do
    patch com_batigrado_url(@com_batigrado), params: { com_batigrado: { bati1: @com_batigrado.bati1, bati2: @com_batigrado.bati2, email: @com_batigrado.email, gradup: @com_batigrado.gradup, montant: @com_batigrado.montant, nom: @com_batigrado.nom, nom_grupo: @com_batigrado.nom_grupo, prenom: @com_batigrado.prenom, reglt: @com_batigrado.reglt, repas1: @com_batigrado.repas1, repas2: @com_batigrado.repas2, repas3: @com_batigrado.repas3, soiree: @com_batigrado.soiree, tpant: @com_batigrado.tpant, ttshirt: @com_batigrado.ttshirt } }
    assert_redirected_to com_batigrado_url(@com_batigrado)
  end

  test "should destroy com_batigrado" do
    assert_difference('ComBatigrado.count', -1) do
      delete com_batigrado_url(@com_batigrado)
    end

    assert_redirected_to com_batigrados_url
  end
end
