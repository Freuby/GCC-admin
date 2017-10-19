require 'test_helper'

class RepasgccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repasgcc = repasgccs(:one)
  end

  test "should get index" do
    get repasgccs_url
    assert_response :success
  end

  test "should get new" do
    get new_repasgcc_url
    assert_response :success
  end

  test "should create repasgcc" do
    assert_difference('Repasgcc.count') do
      post repasgccs_url, params: { repasgcc: { adresse: @repasgcc.adresse, date_lim: @repasgcc.date_lim, date_repas: @repasgcc.date_repas, r1a_tarif: @repasgcc.r1a_tarif, r1e_tarif: @repasgcc.r1e_tarif, r2a_tarif: @repasgcc.r2a_tarif, r2e_tarif: @repasgcc.r2e_tarif, repas1_ad: @repasgcc.repas1_ad, repas1_enf: @repasgcc.repas1_enf, repas2_ad: @repasgcc.repas2_ad, repas2_enf: @repasgcc.repas2_enf, titre: @repasgcc.titre } }
    end

    assert_redirected_to repasgcc_url(Repasgcc.last)
  end

  test "should show repasgcc" do
    get repasgcc_url(@repasgcc)
    assert_response :success
  end

  test "should get edit" do
    get edit_repasgcc_url(@repasgcc)
    assert_response :success
  end

  test "should update repasgcc" do
    patch repasgcc_url(@repasgcc), params: { repasgcc: { adresse: @repasgcc.adresse, date_lim: @repasgcc.date_lim, date_repas: @repasgcc.date_repas, r1a_tarif: @repasgcc.r1a_tarif, r1e_tarif: @repasgcc.r1e_tarif, r2a_tarif: @repasgcc.r2a_tarif, r2e_tarif: @repasgcc.r2e_tarif, repas1_ad: @repasgcc.repas1_ad, repas1_enf: @repasgcc.repas1_enf, repas2_ad: @repasgcc.repas2_ad, repas2_enf: @repasgcc.repas2_enf, titre: @repasgcc.titre } }
    assert_redirected_to repasgcc_url(@repasgcc)
  end

  test "should destroy repasgcc" do
    assert_difference('Repasgcc.count', -1) do
      delete repasgcc_url(@repasgcc)
    end

    assert_redirected_to repasgccs_url
  end
end
