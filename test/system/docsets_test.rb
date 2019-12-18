require "application_system_test_case"

class DocsetsTest < ApplicationSystemTestCase
  setup do
    @docset = docsets(:one)
  end

  test "visiting the index" do
    visit docsets_url
    assert_selector "h1", text: "Docsets"
  end

  test "creating a Docset" do
    visit docsets_url
    click_on "New Docset"

    fill_in "Consignee", with: @docset.consignee
    fill_in "Country of origin", with: @docset.country_of_origin
    fill_in "Description", with: @docset.description
    fill_in "Document amount", with: @docset.document_amount
    fill_in "Document currency", with: @docset.document_currency
    fill_in "Document date", with: @docset.document_date
    fill_in "Final destination", with: @docset.final_destination
    fill_in "Goods description", with: @docset.goods_description
    fill_in "Incoterms", with: @docset.incoterms
    fill_in "Issuing bank", with: @docset.issuing_bank
    fill_in "Lccreate", with: @docset.lccreate_id
    fill_in "Notify party", with: @docset.notify_party
    fill_in "Port of discharge", with: @docset.port_of_discharge
    fill_in "Port of loading", with: @docset.port_of_loading
    fill_in "Remarks", with: @docset.remarks
    fill_in "Shipment date", with: @docset.shipment_date
    fill_in "Shipment from", with: @docset.shipment_from
    fill_in "Shipper", with: @docset.shipper
    click_on "Create Docset"

    assert_text "Docset was successfully created"
    click_on "Back"
  end

  test "updating a Docset" do
    visit docsets_url
    click_on "Edit", match: :first

    fill_in "Consignee", with: @docset.consignee
    fill_in "Country of origin", with: @docset.country_of_origin
    fill_in "Description", with: @docset.description
    fill_in "Document amount", with: @docset.document_amount
    fill_in "Document currency", with: @docset.document_currency
    fill_in "Document date", with: @docset.document_date
    fill_in "Final destination", with: @docset.final_destination
    fill_in "Goods description", with: @docset.goods_description
    fill_in "Incoterms", with: @docset.incoterms
    fill_in "Issuing bank", with: @docset.issuing_bank
    fill_in "Lccreate", with: @docset.lccreate_id
    fill_in "Notify party", with: @docset.notify_party
    fill_in "Port of discharge", with: @docset.port_of_discharge
    fill_in "Port of loading", with: @docset.port_of_loading
    fill_in "Remarks", with: @docset.remarks
    fill_in "Shipment date", with: @docset.shipment_date
    fill_in "Shipment from", with: @docset.shipment_from
    fill_in "Shipper", with: @docset.shipper
    click_on "Update Docset"

    assert_text "Docset was successfully updated"
    click_on "Back"
  end

  test "destroying a Docset" do
    visit docsets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Docset was successfully destroyed"
  end
end
