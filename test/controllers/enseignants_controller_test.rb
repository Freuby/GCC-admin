require 'test_helper'

class EnseignantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enseignant = enseignants(:one)
  end

  test "should get index" do
    get enseignants_url
    assert_response :success
  end

  test "should get new" do
    get new_enseignant_url
    assert_response :success
  end

  test "should create enseignant" do
    assert_difference('Enseignant.count') do
      post enseignants_url, params: { enseignant: { graduation: @enseignant.graduation, nom: @enseignant.nom, prenom: @enseignant.prenom } }
    end

    assert_redirected_to enseignant_url(Enseignant.last)
  end

  test "should show enseignant" do
    get enseignant_url(@enseignant)
    assert_response :success
  end

  test "should get edit" do
    get edit_enseignant_url(@enseignant)
    assert_response :success
  end

  test "should update enseignant" do
    patch enseignant_url(@enseignant), params: { enseignant: { graduation: @enseignant.graduation, nom: @enseignant.nom, prenom: @enseignant.prenom } }
    assert_redirected_to enseignant_url(@enseignant)
  end

  test "should destroy enseignant" do
    assert_difference('Enseignant.count', -1) do
      delete enseignant_url(@enseignant)
    end

    assert_redirected_to enseignants_url
  end
end
