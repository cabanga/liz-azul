require "test_helper"

class ScoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scout = scouts(:one)
  end

  test "should get index" do
    get scouts_url
    assert_response :success
  end

  test "should get new" do
    get new_scout_url
    assert_response :success
  end

  test "should create scout" do
    assert_difference('Scout.count') do
      post scouts_url, params: { scout: { cell_phone1: @scout.cell_phone1, cell_phone2: @scout.cell_phone2, identification_number: @scout.identification_number, identification_type: @scout.identification_type, name: @scout.name, parent_name: @scout.parent_name, reference_numer: @scout.reference_numer, slug: @scout.slug, started_at: @scout.started_at } }
    end

    assert_redirected_to scout_url(Scout.last)
  end

  test "should show scout" do
    get scout_url(@scout)
    assert_response :success
  end

  test "should get edit" do
    get edit_scout_url(@scout)
    assert_response :success
  end

  test "should update scout" do
    patch scout_url(@scout), params: { scout: { cell_phone1: @scout.cell_phone1, cell_phone2: @scout.cell_phone2, identification_number: @scout.identification_number, identification_type: @scout.identification_type, name: @scout.name, parent_name: @scout.parent_name, reference_numer: @scout.reference_numer, slug: @scout.slug, started_at: @scout.started_at } }
    assert_redirected_to scout_url(@scout)
  end

  test "should destroy scout" do
    assert_difference('Scout.count', -1) do
      delete scout_url(@scout)
    end

    assert_redirected_to scouts_url
  end
end
