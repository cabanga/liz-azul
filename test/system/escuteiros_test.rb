require "application_system_test_case"

class EscuteirosTest < ApplicationSystemTestCase
  setup do
    @escuteiro = escuteiros(:one)
  end

  test "visiting the index" do
    visit escuteiros_url
    assert_selector "h1", text: "Escuteiros"
  end

  test "creating a Escuteiro" do
    visit escuteiros_url
    click_on "New Escuteiro"

    fill_in "Agrupamento", with: @escuteiro.agrupamento_id
    fill_in "Contacto", with: @escuteiro.contacto
    fill_in "Data nascimento", with: @escuteiro.data_nascimento
    fill_in "Nome", with: @escuteiro.nome
    click_on "Create Escuteiro"

    assert_text "Escuteiro was successfully created"
    click_on "Back"
  end

  test "updating a Escuteiro" do
    visit escuteiros_url
    click_on "Edit", match: :first

    fill_in "Agrupamento", with: @escuteiro.agrupamento_id
    fill_in "Contacto", with: @escuteiro.contacto
    fill_in "Data nascimento", with: @escuteiro.data_nascimento
    fill_in "Nome", with: @escuteiro.nome
    click_on "Update Escuteiro"

    assert_text "Escuteiro was successfully updated"
    click_on "Back"
  end

  test "destroying a Escuteiro" do
    visit escuteiros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Escuteiro was successfully destroyed"
  end
end
