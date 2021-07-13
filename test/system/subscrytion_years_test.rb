require "application_system_test_case"

class SubscrytionYearsTest < ApplicationSystemTestCase
  setup do
    @subscrytion_year = subscrytion_years(:one)
  end

  test "visiting the index" do
    visit subscrytion_years_url
    assert_selector "h1", text: "Subscrytion Years"
  end

  test "creating a Subscrytion year" do
    visit subscrytion_years_url
    click_on "New Subscrytion Year"

    fill_in "Scout", with: @subscrytion_year.scout_id
    fill_in "Section", with: @subscrytion_year.section
    fill_in "Slug", with: @subscrytion_year.slug
    fill_in "Year at", with: @subscrytion_year.year_at
    click_on "Create Subscrytion year"

    assert_text "Subscrytion year was successfully created"
    click_on "Back"
  end

  test "updating a Subscrytion year" do
    visit subscrytion_years_url
    click_on "Edit", match: :first

    fill_in "Scout", with: @subscrytion_year.scout_id
    fill_in "Section", with: @subscrytion_year.section
    fill_in "Slug", with: @subscrytion_year.slug
    fill_in "Year at", with: @subscrytion_year.year_at
    click_on "Update Subscrytion year"

    assert_text "Subscrytion year was successfully updated"
    click_on "Back"
  end

  test "destroying a Subscrytion year" do
    visit subscrytion_years_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subscrytion year was successfully destroyed"
  end
end
