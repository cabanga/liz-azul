require 'test_helper'

class AgrupamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agrupamento = agrupamentos(:one)
  end

  test "should get index" do
    get agrupamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_agrupamento_url
    assert_response :success
  end

  test "should create agrupamento" do
    assert_difference('Agrupamento.count') do
      post agrupamentos_url, params: { agrupamento: { lema: @agrupamento.lema, nome: @agrupamento.nome, numero: @agrupamento.numero, regiao_id: @agrupamento.regiao_id } }
    end

    assert_redirected_to agrupamento_url(Agrupamento.last)
  end

  test "should show agrupamento" do
    get agrupamento_url(@agrupamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_agrupamento_url(@agrupamento)
    assert_response :success
  end

  test "should update agrupamento" do
    patch agrupamento_url(@agrupamento), params: { agrupamento: { lema: @agrupamento.lema, nome: @agrupamento.nome, numero: @agrupamento.numero, regiao_id: @agrupamento.regiao_id } }
    assert_redirected_to agrupamento_url(@agrupamento)
  end

  test "should destroy agrupamento" do
    assert_difference('Agrupamento.count', -1) do
      delete agrupamento_url(@agrupamento)
    end

    assert_redirected_to agrupamentos_url
  end
end
