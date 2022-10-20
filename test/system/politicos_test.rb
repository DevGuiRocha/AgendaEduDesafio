require "application_system_test_case"

class PoliticosTest < ApplicationSystemTestCase
  setup do
    @politico = politicos(:one)
  end

  test "visiting the index" do
    visit politicos_url
    assert_selector "h1", text: "Politicos"
  end

  test "creating a Politico" do
    visit politicos_url
    click_on "New Politico"

    fill_in "Cpf", with: @politico.cpf
    fill_in "Id cadastro", with: @politico.id_cadastro
    fill_in "Nome", with: @politico.nome
    fill_in "Sgpartido", with: @politico.sgpartido
    fill_in "Sguf", with: @politico.sguf
    click_on "Create Politico"

    assert_text "Politico was successfully created"
    click_on "Back"
  end

  test "updating a Politico" do
    visit politicos_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @politico.cpf
    fill_in "Id cadastro", with: @politico.id_cadastro
    fill_in "Nome", with: @politico.nome
    fill_in "Sgpartido", with: @politico.sgpartido
    fill_in "Sguf", with: @politico.sguf
    click_on "Update Politico"

    assert_text "Politico was successfully updated"
    click_on "Back"
  end

  test "destroying a Politico" do
    visit politicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Politico was successfully destroyed"
  end
end
