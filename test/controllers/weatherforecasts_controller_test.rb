require 'test_helper'

class WeatherforecastsControllerTest < ActionController::TestCase
  setup do
    @weatherforecast = weatherforecasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weatherforecasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weatherforecast" do
    assert_difference('Weatherforecast.count') do
      post :create, weatherforecast: { date: @weatherforecast.date, humidity_level: @weatherforecast.humidity_level, office_id: @weatherforecast.office_id, sunlight: @weatherforecast.sunlight, temperature: @weatherforecast.temperature }
    end

    assert_redirected_to weatherforecast_path(assigns(:weatherforecast))
  end

  test "should show weatherforecast" do
    get :show, id: @weatherforecast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weatherforecast
    assert_response :success
  end

  test "should update weatherforecast" do
    patch :update, id: @weatherforecast, weatherforecast: { date: @weatherforecast.date, humidity_level: @weatherforecast.humidity_level, office_id: @weatherforecast.office_id, sunlight: @weatherforecast.sunlight, temperature: @weatherforecast.temperature }
    assert_redirected_to weatherforecast_path(assigns(:weatherforecast))
  end

  test "should destroy weatherforecast" do
    assert_difference('Weatherforecast.count', -1) do
      delete :destroy, id: @weatherforecast
    end

    assert_redirected_to weatherforecasts_path
  end
end
