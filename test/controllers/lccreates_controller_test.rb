require 'test_helper'

class LccreatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lccreate = lccreates(:one)
  end

  test "should get index" do
    get lccreates_url
    assert_response :success
  end

  test "should get new" do
    get new_lccreate_url
    assert_response :success
  end

  test "should create lccreate" do
    assert_difference('Lccreate.count') do
      post lccreates_url, params: { lccreate: { additional_conditions: @lccreate.additional_conditions, amount: @lccreate.amount, applicant: @lccreate.applicant, available_by: @lccreate.available_by, available_with: @lccreate.available_with, beneficiary: @lccreate.beneficiary, currency: @lccreate.currency, documents_required: @lccreate.documents_required, drawee: @lccreate.drawee, expiry_date: @lccreate.expiry_date, final_destination: @lccreate.final_destination, goods_description: @lccreate.goods_description, issue_date: @lccreate.issue_date, issuing_bank: @lccreate.issuing_bank, latest_shipment_date: @lccreate.latest_shipment_date, lc_number: @lccreate.lc_number, partial_shipment: @lccreate.partial_shipment, port_of_discharge: @lccreate.port_of_discharge, port_of_loading: @lccreate.port_of_loading, remarks: @lccreate.remarks, shipment_from: @lccreate.shipment_from, tenor: @lccreate.tenor, transhipment: @lccreate.transhipment } }
    end

    assert_redirected_to lccreate_url(Lccreate.last)
  end

  test "should show lccreate" do
    get lccreate_url(@lccreate)
    assert_response :success
  end

  test "should get edit" do
    get edit_lccreate_url(@lccreate)
    assert_response :success
  end

  test "should update lccreate" do
    patch lccreate_url(@lccreate), params: { lccreate: { additional_conditions: @lccreate.additional_conditions, amount: @lccreate.amount, applicant: @lccreate.applicant, available_by: @lccreate.available_by, available_with: @lccreate.available_with, beneficiary: @lccreate.beneficiary, currency: @lccreate.currency, documents_required: @lccreate.documents_required, drawee: @lccreate.drawee, expiry_date: @lccreate.expiry_date, final_destination: @lccreate.final_destination, goods_description: @lccreate.goods_description, issue_date: @lccreate.issue_date, issuing_bank: @lccreate.issuing_bank, latest_shipment_date: @lccreate.latest_shipment_date, lc_number: @lccreate.lc_number, partial_shipment: @lccreate.partial_shipment, port_of_discharge: @lccreate.port_of_discharge, port_of_loading: @lccreate.port_of_loading, remarks: @lccreate.remarks, shipment_from: @lccreate.shipment_from, tenor: @lccreate.tenor, transhipment: @lccreate.transhipment } }
    assert_redirected_to lccreate_url(@lccreate)
  end

  test "should destroy lccreate" do
    assert_difference('Lccreate.count', -1) do
      delete lccreate_url(@lccreate)
    end

    assert_redirected_to lccreates_url
  end
end
