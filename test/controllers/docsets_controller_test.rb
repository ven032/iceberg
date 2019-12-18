require 'test_helper'

class DocsetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @docset = docsets(:one)
  end

  test "should get index" do
    get docsets_url
    assert_response :success
  end

  test "should get new" do
    get new_docset_url
    assert_response :success
  end

  test "should create docset" do
    assert_difference('Docset.count') do
      post docsets_url, params: { docset: { consignee: @docset.consignee, country_of_origin: @docset.country_of_origin, description: @docset.description, document_amount: @docset.document_amount, document_currency: @docset.document_currency, document_date: @docset.document_date, final_destination: @docset.final_destination, goods_description: @docset.goods_description, incoterms: @docset.incoterms, issuing_bank: @docset.issuing_bank, lccreate_id: @docset.lccreate_id, notify_party: @docset.notify_party, port_of_discharge: @docset.port_of_discharge, port_of_loading: @docset.port_of_loading, remarks: @docset.remarks, shipment_date: @docset.shipment_date, shipment_from: @docset.shipment_from, shipper: @docset.shipper } }
    end

    assert_redirected_to docset_url(Docset.last)
  end

  test "should show docset" do
    get docset_url(@docset)
    assert_response :success
  end

  test "should get edit" do
    get edit_docset_url(@docset)
    assert_response :success
  end

  test "should update docset" do
    patch docset_url(@docset), params: { docset: { consignee: @docset.consignee, country_of_origin: @docset.country_of_origin, description: @docset.description, document_amount: @docset.document_amount, document_currency: @docset.document_currency, document_date: @docset.document_date, final_destination: @docset.final_destination, goods_description: @docset.goods_description, incoterms: @docset.incoterms, issuing_bank: @docset.issuing_bank, lccreate_id: @docset.lccreate_id, notify_party: @docset.notify_party, port_of_discharge: @docset.port_of_discharge, port_of_loading: @docset.port_of_loading, remarks: @docset.remarks, shipment_date: @docset.shipment_date, shipment_from: @docset.shipment_from, shipper: @docset.shipper } }
    assert_redirected_to docset_url(@docset)
  end

  test "should destroy docset" do
    assert_difference('Docset.count', -1) do
      delete docset_url(@docset)
    end

    assert_redirected_to docsets_url
  end
end
