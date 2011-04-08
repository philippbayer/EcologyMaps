require 'test_helper'

class CountryYearsControllerTest < ActionController::TestCase
  setup do
    @country_year = country_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:country_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country_year" do
    assert_difference('CountryYear.count') do
      post :create, :country_year => @country_year.attributes
    end

    assert_redirected_to country_year_path(assigns(:country_year))
  end

  test "should show country_year" do
    get :show, :id => @country_year.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @country_year.to_param
    assert_response :success
  end

  test "should update country_year" do
    put :update, :id => @country_year.to_param, :country_year => @country_year.attributes
    assert_redirected_to country_year_path(assigns(:country_year))
  end

  test "should destroy country_year" do
    assert_difference('CountryYear.count', -1) do
      delete :destroy, :id => @country_year.to_param
    end

    assert_redirected_to country_years_path
  end
end
