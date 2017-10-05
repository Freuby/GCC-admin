require 'test_helper'

class ElevesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elefe = eleves(:one)
  end

  test "should get index" do
    get eleves_url
    assert_response :success
  end

  test "should get new" do
    get new_elefe_url
    assert_response :success
  end

  test "should create elefe" do
    assert_difference('Elefe.count') do
      post eleves_url, params: { elefe: { a_signaler: @elefe.a_signaler, cp: @elefe.cp, date_naissance: @elefe.date_naissance, email: @elefe.email, gcc_connait: @elefe.gcc_connait, graduation: @elefe.graduation, info_ville: @elefe.info_ville, nom: @elefe.nom, parentee: @elefe.parentee, prenom: @elefe.prenom, prix: @elefe.prix, reglement: @elefe.reglement, rue: @elefe.rue, signature: @elefe.signature, soin_moi: @elefe.soin_moi, soin_tutelle: @elefe.soin_tutelle, tel_fixe: @elefe.tel_fixe, tel_mobile: @elefe.tel_mobile, urgence_nom: @elefe.urgence_nom, urgence_parentee: @elefe.urgence_parentee, urgence_prenom: @elefe.urgence_prenom, urgence_tel: @elefe.urgence_tel, ville: @elefe.ville, ville_entrainement: @elefe.ville_entrainement } }
    end

    assert_redirected_to elefe_url(Elefe.last)
  end

  test "should show elefe" do
    get elefe_url(@elefe)
    assert_response :success
  end

  test "should get edit" do
    get edit_elefe_url(@elefe)
    assert_response :success
  end

  test "should update elefe" do
    patch elefe_url(@elefe), params: { elefe: { a_signaler: @elefe.a_signaler, cp: @elefe.cp, date_naissance: @elefe.date_naissance, email: @elefe.email, gcc_connait: @elefe.gcc_connait, graduation: @elefe.graduation, info_ville: @elefe.info_ville, nom: @elefe.nom, parentee: @elefe.parentee, prenom: @elefe.prenom, prix: @elefe.prix, reglement: @elefe.reglement, rue: @elefe.rue, signature: @elefe.signature, soin_moi: @elefe.soin_moi, soin_tutelle: @elefe.soin_tutelle, tel_fixe: @elefe.tel_fixe, tel_mobile: @elefe.tel_mobile, urgence_nom: @elefe.urgence_nom, urgence_parentee: @elefe.urgence_parentee, urgence_prenom: @elefe.urgence_prenom, urgence_tel: @elefe.urgence_tel, ville: @elefe.ville, ville_entrainement: @elefe.ville_entrainement } }
    assert_redirected_to elefe_url(@elefe)
  end

  test "should destroy elefe" do
    assert_difference('Elefe.count', -1) do
      delete elefe_url(@elefe)
    end

    assert_redirected_to eleves_url
  end
end
