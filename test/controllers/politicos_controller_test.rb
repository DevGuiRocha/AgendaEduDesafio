require 'test_helper'

class PoliticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politico = politicos(:one)
  end

  test "should get index" do
    get politicos_url
    assert_response :success
  end

  test "should get new" do
    get new_politico_url
    assert_response :success
  end

  test "should create politico" do
    assert_difference('Politico.count') do
      post politicos_url, params: { politico: { cpf: @politico.cpf, id_cadastro: @politico.id_cadastro, nome: @politico.nome, sgpartido: @politico.sgpartido, sguf: @politico.sguf } }
    end

    assert_redirected_to politico_url(Politico.last)
  end

  test "should show politico" do
    get politico_url(@politico)
    assert_response :success
  end

  test "should get edit" do
    get edit_politico_url(@politico)
    assert_response :success
  end

  test "should update politico" do
    patch politico_url(@politico), params: { politico: { cpf: @politico.cpf, id_cadastro: @politico.id_cadastro, nome: @politico.nome, sgpartido: @politico.sgpartido, sguf: @politico.sguf } }
    assert_redirected_to politico_url(@politico)
  end

  test "should destroy politico" do
    assert_difference('Politico.count', -1) do
      delete politico_url(@politico)
    end

    assert_redirected_to politicos_url
  end
end
