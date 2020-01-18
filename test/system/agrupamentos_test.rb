require "application_system_test_case"

class AgrupamentosTest < ApplicationSystemTestCase
  setup do
    @agrupamento = agrupamentos(:one)
  end

  test "visiting the index" do
    visit agrupamentos_url
    assert_selector "h1", text: "Agrupamentos"
  end

  test "creating a Agrupamento" do
    visit agrupamentos_url
    click_on "New Agrupamento"

    fill_in "Lema", with: @agrupamento.lema
    fill_in "Nome", with: @agrupamento.nome
    fill_in "Numero", with: @agrupamento.numero
    fill_in "Regiao", with: @agrupamento.regiao_id
    click_on "Create Agrupamento"

    assert_text "Agrupamento was successfully created"
    click_on "Back"
  end

  test "updating a Agrupamento" do
    visit agrupamentos_url
    click_on "Edit", match: :first

    fill_in "Lema", with: @agrupamento.lema
    fill_in "Nome", with: @agrupamento.nome
    fill_in "Numero", with: @agrupamento.numero
    fill_in "Regiao", with: @agrupamento.regiao_id
    click_on "Update Agrupamento"

    assert_text "Agrupamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Agrupamento" do
    visit agrupamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agrupamento was successfully destroyed"
  end
end
