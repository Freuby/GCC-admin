require 'test_helper'

class EtatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etat = etats(:one)
  end

  test "should get index" do
    get etats_url
    assert_response :success
  end

  test "should get new" do
    get new_etat_url
    assert_response :success
  end

  test "should create etat" do
    assert_difference('Etat.count') do
      post etats_url, params: { etat: { description: @etat.description, etat: @etat.etat } }
    end

    assert_redirected_to etat_url(Etat.last)
  end

  test "should show etat" do
    get etat_url(@etat)
    assert_response :success
  end

  test "should get edit" do
    get edit_etat_url(@etat)
    assert_response :success
  end

  test "should update etat" do
    patch etat_url(@etat), params: { etat: { description: @etat.description, etat: @etat.etat } }
    assert_redirected_to etat_url(@etat)
  end

  test "should destroy etat" do
    assert_difference('Etat.count', -1) do
      delete etat_url(@etat)
    end

    assert_redirected_to etats_url
  end
end
