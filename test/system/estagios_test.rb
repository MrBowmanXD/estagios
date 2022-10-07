require "application_system_test_case"

class EstagiosTest < ApplicationSystemTestCase
  setup do
    @estagio = estagios(:one)
  end

  test "visiting the index" do
    visit estagios_url
    assert_selector "h1", text: "Estagios"
  end

  test "should create estagio" do
    visit estagios_url
    click_on "New estagio"

    fill_in "Descricao", with: @estagio.descricao
    fill_in "Localidade", with: @estagio.localidade
    fill_in "Titulo", with: @estagio.titulo
    click_on "Create Estagio"

    assert_text "Estagio was successfully created"
    click_on "Back"
  end

  test "should update Estagio" do
    visit estagio_url(@estagio)
    click_on "Edit this estagio", match: :first

    fill_in "Descricao", with: @estagio.descricao
    fill_in "Localidade", with: @estagio.localidade
    fill_in "Titulo", with: @estagio.titulo
    click_on "Update Estagio"

    assert_text "Estagio was successfully updated"
    click_on "Back"
  end

  test "should destroy Estagio" do
    visit estagio_url(@estagio)
    click_on "Destroy this estagio", match: :first

    assert_text "Estagio was successfully destroyed"
  end
end
