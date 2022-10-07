require "test_helper"

class EstagiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estagio = estagios(:one)
  end

  test "should get index" do
    get estagios_url
    assert_response :success
  end

  test "should get new" do
    get new_estagio_url
    assert_response :success
  end

  test "should create estagio" do
    assert_difference("Estagio.count") do
      post estagios_url, params: { estagio: { descricao: @estagio.descricao, localidade: @estagio.localidade, titulo: @estagio.titulo } }
    end

    assert_redirected_to estagio_url(Estagio.last)
  end

  test "should show estagio" do
    get estagio_url(@estagio)
    assert_response :success
  end

  test "should get edit" do
    get edit_estagio_url(@estagio)
    assert_response :success
  end

  test "should update estagio" do
    patch estagio_url(@estagio), params: { estagio: { descricao: @estagio.descricao, localidade: @estagio.localidade, titulo: @estagio.titulo } }
    assert_redirected_to estagio_url(@estagio)
  end

  test "should destroy estagio" do
    assert_difference("Estagio.count", -1) do
      delete estagio_url(@estagio)
    end

    assert_redirected_to estagios_url
  end
end
