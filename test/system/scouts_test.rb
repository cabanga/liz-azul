require "application_system_test_case"

class ScoutsTest < ApplicationSystemTestCase
  setup do
    @scout = scouts(:one)
  end

  test "visiting the index" do
    visit scouts_url
    assert_selector "h1", text: "Scouts"
  end

  test "creating a Scout" do
    visit scouts_url
    click_on "New Scout"

    fill_in "Cell phone1", with: @scout.cell_phone1
    fill_in "Cell phone2", with: @scout.cell_phone2
    fill_in "Identification number", with: @scout.identification_number
    fill_in "Identification type", with: @scout.identification_type
    fill_in "Name", with: @scout.name
    fill_in "Parent name", with: @scout.parent_name
    fill_in "Reference numer", with: @scout.reference_numer
    fill_in "Slug", with: @scout.slug
    fill_in "Started at", with: @scout.started_at
    click_on "Create Scout"

    assert_text "Scout was successfully created"
    click_on "Back"
  end

  test "updating a Scout" do
    visit scouts_url
    click_on "Edit", match: :first

    fill_in "Cell phone1", with: @scout.cell_phone1
    fill_in "Cell phone2", with: @scout.cell_phone2
    fill_in "Identification number", with: @scout.identification_number
    fill_in "Identification type", with: @scout.identification_type
    fill_in "Name", with: @scout.name
    fill_in "Parent name", with: @scout.parent_name
    fill_in "Reference numer", with: @scout.reference_numer
    fill_in "Slug", with: @scout.slug
    fill_in "Started at", with: @scout.started_at
    click_on "Update Scout"

    assert_text "Scout was successfully updated"
    click_on "Back"
  end

  test "destroying a Scout" do
    visit scouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scout was successfully destroyed"
  end
end
