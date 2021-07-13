require "test_helper"

class SubscrytionYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscrytion_year = subscrytion_years(:one)
  end

  test "should get index" do
    get subscrytion_years_url
    assert_response :success
  end

  test "should get new" do
    get new_subscrytion_year_url
    assert_response :success
  end

  test "should create subscrytion_year" do
    assert_difference('SubscrytionYear.count') do
      post subscrytion_years_url, params: { subscrytion_year: { scout_id: @subscrytion_year.scout_id, section: @subscrytion_year.section, slug: @subscrytion_year.slug, year_at: @subscrytion_year.year_at } }
    end

    assert_redirected_to subscrytion_year_url(SubscrytionYear.last)
  end

  test "should show subscrytion_year" do
    get subscrytion_year_url(@subscrytion_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscrytion_year_url(@subscrytion_year)
    assert_response :success
  end

  test "should update subscrytion_year" do
    patch subscrytion_year_url(@subscrytion_year), params: { subscrytion_year: { scout_id: @subscrytion_year.scout_id, section: @subscrytion_year.section, slug: @subscrytion_year.slug, year_at: @subscrytion_year.year_at } }
    assert_redirected_to subscrytion_year_url(@subscrytion_year)
  end

  test "should destroy subscrytion_year" do
    assert_difference('SubscrytionYear.count', -1) do
      delete subscrytion_year_url(@subscrytion_year)
    end

    assert_redirected_to subscrytion_years_url
  end
end
