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
      post batigrados_url, params: { batigrado: { boolean: @batigrado.boolean, date_bat: @batigrado.date_bat, grad_up: @batigrado.grad_up, info_regl: @batigrado.info_regl, repas1: @batigrado.repas1, repas2: @batigrado.repas2, repas3: @batigrado.repas3, soiree: @batigrado.soiree, tail_pant: @batigrado.tail_pant, tail_tshirt: @batigrado.tail_tshirt, tarif1: @batigrado.tarif1, tarif2: @batigrado.tarif2, titre: @batigrado.titre } }
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
    patch batigrado_url(@batigrado), params: { batigrado: { boolean: @batigrado.boolean, date_bat: @batigrado.date_bat, grad_up: @batigrado.grad_up, info_regl: @batigrado.info_regl, repas1: @batigrado.repas1, repas2: @batigrado.repas2, repas3: @batigrado.repas3, soiree: @batigrado.soiree, tail_pant: @batigrado.tail_pant, tail_tshirt: @batigrado.tail_tshirt, tarif1: @batigrado.tarif1, tarif2: @batigrado.tarif2, titre: @batigrado.titre } }
    assert_redirected_to batigrado_url(@batigrado)
  end

  test "should destroy batigrado" do
    assert_difference('Batigrado.count', -1) do
      delete batigrado_url(@batigrado)
    end

    assert_redirected_to batigrados_url
  end
end
