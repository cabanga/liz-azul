require "application_system_test_case"

class RegioesTest < ApplicationSystemTestCase
  setup do
    @regiao = regioes(:one)
  end

  test "visiting the index" do
    visit regioes_url
    assert_selector "h1", text: "Regioes"
  end

  test "creating a Regiao" do
    visit regioes_url
    click_on "New Regiao"

    fill_in "Lema", with: @regiao.lema
    fill_in "Nome", with: @regiao.nome
    click_on "Create Regiao"

    assert_text "Regiao was successfully created"
    click_on "Back"
  end

  test "updating a Regiao" do
    visit regioes_url
    click_on "Edit", match: :first

    fill_in "Lema", with: @regiao.lema
    fill_in "Nome", with: @regiao.nome
    click_on "Update Regiao"

    assert_text "Regiao was successfully updated"
    click_on "Back"
  end

  test "destroying a Regiao" do
    visit regioes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Regiao was successfully destroyed"
  end
end
