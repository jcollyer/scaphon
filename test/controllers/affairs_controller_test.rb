require 'test_helper'

class AffairsControllerTest < ActionController::TestCase
  setup do
    @affair = affairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affair" do
    assert_difference('Affair.count') do
      post :create, affair: { cost: @affair.cost, date: @affair.date, kind: @affair.kind, location: @affair.location, name: @affair.name, paypal: @affair.paypal }
    end

    assert_redirected_to affair_path(assigns(:affair))
  end

  test "should show affair" do
    get :show, id: @affair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affair
    assert_response :success
  end

  test "should update affair" do
    patch :update, id: @affair, affair: { cost: @affair.cost, date: @affair.date, kind: @affair.kind, location: @affair.location, name: @affair.name, paypal: @affair.paypal }
    assert_redirected_to affair_path(assigns(:affair))
  end

  test "should destroy affair" do
    assert_difference('Affair.count', -1) do
      delete :destroy, id: @affair
    end

    assert_redirected_to affairs_path
  end
end
