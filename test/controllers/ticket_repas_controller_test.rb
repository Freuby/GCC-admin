require 'test_helper'

class TicketRepasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_repa = ticket_repas(:one)
  end

  test "should get index" do
    get ticket_repas_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_repa_url
    assert_response :success
  end

  test "should create ticket_repa" do
    assert_difference('TicketRepa.count') do
      post ticket_repas_url, params: { ticket_repa: { qta1: @ticket_repa.qta1, qta2: @ticket_repa.qta2, qte1: @ticket_repa.qte1, qte2: @ticket_repa.qte2 } }
    end

    assert_redirected_to ticket_repa_url(TicketRepa.last)
  end

  test "should show ticket_repa" do
    get ticket_repa_url(@ticket_repa)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_repa_url(@ticket_repa)
    assert_response :success
  end

  test "should update ticket_repa" do
    patch ticket_repa_url(@ticket_repa), params: { ticket_repa: { qta1: @ticket_repa.qta1, qta2: @ticket_repa.qta2, qte1: @ticket_repa.qte1, qte2: @ticket_repa.qte2 } }
    assert_redirected_to ticket_repa_url(@ticket_repa)
  end

  test "should destroy ticket_repa" do
    assert_difference('TicketRepa.count', -1) do
      delete ticket_repa_url(@ticket_repa)
    end

    assert_redirected_to ticket_repas_url
  end
end
