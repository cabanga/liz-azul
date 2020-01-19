require 'test_helper'

class EscuteirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escuteiro = escuteiros(:one)
  end

  test "should get index" do
    get escuteiros_url
    assert_response :success
  end

  test "should get new" do
    get new_escuteiro_url
    assert_response :success
  end

  test "should create escuteiro" do
    assert_difference('Escuteiro.count') do
      post escuteiros_url, params: { escuteiro: { agrupamento_id: @escuteiro.agrupamento_id, contacto: @escuteiro.contacto, data_nascimento: @escuteiro.data_nascimento, nome: @escuteiro.nome } }
    end

    assert_redirected_to escuteiro_url(Escuteiro.last)
  end

  test "should show escuteiro" do
    get escuteiro_url(@escuteiro)
    assert_response :success
  end

  test "should get edit" do
    get edit_escuteiro_url(@escuteiro)
    assert_response :success
  end

  test "should update escuteiro" do
    patch escuteiro_url(@escuteiro), params: { escuteiro: { agrupamento_id: @escuteiro.agrupamento_id, contacto: @escuteiro.contacto, data_nascimento: @escuteiro.data_nascimento, nome: @escuteiro.nome } }
    assert_redirected_to escuteiro_url(@escuteiro)
  end

  test "should destroy escuteiro" do
    assert_difference('Escuteiro.count', -1) do
      delete escuteiro_url(@escuteiro)
    end

    assert_redirected_to escuteiros_url
  end
end
