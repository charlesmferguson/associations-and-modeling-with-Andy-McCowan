require 'test_helper'

class ServiceOfferingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_offering = service_offerings(:one)
  end

  test "should get index" do
    get service_offerings_url
    assert_response :success
  end

  test "should get new" do
    get new_service_offering_url
    assert_response :success
  end

  test "should create service_offering" do
    assert_difference('ServiceOffering.count') do
      post service_offerings_url, params: { service_offering: { name: @service_offering.name } }
    end

    assert_redirected_to service_offering_url(ServiceOffering.last)
  end

  test "should show service_offering" do
    get service_offering_url(@service_offering)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_offering_url(@service_offering)
    assert_response :success
  end

  test "should update service_offering" do
    patch service_offering_url(@service_offering), params: { service_offering: { name: @service_offering.name } }
    assert_redirected_to service_offering_url(@service_offering)
  end

  test "should destroy service_offering" do
    assert_difference('ServiceOffering.count', -1) do
      delete service_offering_url(@service_offering)
    end

    assert_redirected_to service_offerings_url
  end
end
