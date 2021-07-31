require "application_system_test_case"

class ConfirmationsTest < ApplicationSystemTestCase
  setup do
    @confirmation = confirmations(:one)
  end

  test "visiting the index" do
    visit confirmations_url
    assert_selector "h1", text: "Confirmations"
  end

  test "creating a Confirmation" do
    visit confirmations_url
    click_on "New Confirmation"

    fill_in "Position", with: @confirmation.position_id
    fill_in "Scout", with: @confirmation.scout_id
    fill_in "Section", with: @confirmation.section_id
    fill_in "Slug", with: @confirmation.slug
    check "Status" if @confirmation.status
    fill_in "Year at", with: @confirmation.year_at
    click_on "Create Confirmation"

    assert_text "Confirmation was successfully created"
    click_on "Back"
  end

  test "updating a Confirmation" do
    visit confirmations_url
    click_on "Edit", match: :first

    fill_in "Position", with: @confirmation.position_id
    fill_in "Scout", with: @confirmation.scout_id
    fill_in "Section", with: @confirmation.section_id
    fill_in "Slug", with: @confirmation.slug
    check "Status" if @confirmation.status
    fill_in "Year at", with: @confirmation.year_at
    click_on "Update Confirmation"

    assert_text "Confirmation was successfully updated"
    click_on "Back"
  end

  test "destroying a Confirmation" do
    visit confirmations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Confirmation was successfully destroyed"
  end
end
