require "application_system_test_case"

class LccreatesTest < ApplicationSystemTestCase
  setup do
    @lccreate = lccreates(:one)
  end

  test "visiting the index" do
    visit lccreates_url
    assert_selector "h1", text: "Lccreates"
  end

  test "creating a Lccreate" do
    visit lccreates_url
    click_on "New Lccreate"

    fill_in "Additional conditions", with: @lccreate.additional_conditions
    fill_in "Amount", with: @lccreate.amount
    fill_in "Applicant", with: @lccreate.applicant
    fill_in "Available by", with: @lccreate.available_by
    fill_in "Available with", with: @lccreate.available_with
    fill_in "Beneficiary", with: @lccreate.beneficiary
    fill_in "Currency", with: @lccreate.currency
    fill_in "Documents required", with: @lccreate.documents_required
    fill_in "Drawee", with: @lccreate.drawee
    fill_in "Expiry date", with: @lccreate.expiry_date
    fill_in "Final destination", with: @lccreate.final_destination
    fill_in "Goods description", with: @lccreate.goods_description
    fill_in "Issue date", with: @lccreate.issue_date
    fill_in "Issuing bank", with: @lccreate.issuing_bank
    fill_in "Latest shipment date", with: @lccreate.latest_shipment_date
    fill_in "Lc number", with: @lccreate.lc_number
    fill_in "Partial shipment", with: @lccreate.partial_shipment
    fill_in "Port of discharge", with: @lccreate.port_of_discharge
    fill_in "Port of loading", with: @lccreate.port_of_loading
    fill_in "Remarks", with: @lccreate.remarks
    fill_in "Shipment from", with: @lccreate.shipment_from
    fill_in "Tenor", with: @lccreate.tenor
    fill_in "Transhipment", with: @lccreate.transhipment
    click_on "Create Lccreate"

    assert_text "Lccreate was successfully created"
    click_on "Back"
  end

  test "updating a Lccreate" do
    visit lccreates_url
    click_on "Edit", match: :first

    fill_in "Additional conditions", with: @lccreate.additional_conditions
    fill_in "Amount", with: @lccreate.amount
    fill_in "Applicant", with: @lccreate.applicant
    fill_in "Available by", with: @lccreate.available_by
    fill_in "Available with", with: @lccreate.available_with
    fill_in "Beneficiary", with: @lccreate.beneficiary
    fill_in "Currency", with: @lccreate.currency
    fill_in "Documents required", with: @lccreate.documents_required
    fill_in "Drawee", with: @lccreate.drawee
    fill_in "Expiry date", with: @lccreate.expiry_date
    fill_in "Final destination", with: @lccreate.final_destination
    fill_in "Goods description", with: @lccreate.goods_description
    fill_in "Issue date", with: @lccreate.issue_date
    fill_in "Issuing bank", with: @lccreate.issuing_bank
    fill_in "Latest shipment date", with: @lccreate.latest_shipment_date
    fill_in "Lc number", with: @lccreate.lc_number
    fill_in "Partial shipment", with: @lccreate.partial_shipment
    fill_in "Port of discharge", with: @lccreate.port_of_discharge
    fill_in "Port of loading", with: @lccreate.port_of_loading
    fill_in "Remarks", with: @lccreate.remarks
    fill_in "Shipment from", with: @lccreate.shipment_from
    fill_in "Tenor", with: @lccreate.tenor
    fill_in "Transhipment", with: @lccreate.transhipment
    click_on "Update Lccreate"

    assert_text "Lccreate was successfully updated"
    click_on "Back"
  end

  test "destroying a Lccreate" do
    visit lccreates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lccreate was successfully destroyed"
  end
end
