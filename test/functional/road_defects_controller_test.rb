require 'test_helper'

class RoadDefectsControllerTest < ActionController::TestCase
  setup do
    @road_defect = road_defects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:road_defects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create road_defect" do
    assert_difference('RoadDefect.count') do
      post :create, road_defect: { description: @road_defect.description, diameter: @road_defect.diameter, location: @road_defect.location, reporter_id: @road_defect.reporter_id }
    end

    assert_redirected_to road_defect_path(assigns(:road_defect))
  end

  test "should show road_defect" do
    get :show, id: @road_defect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @road_defect
    assert_response :success
  end

  test "should update road_defect" do
    put :update, id: @road_defect, road_defect: { description: @road_defect.description, diameter: @road_defect.diameter, location: @road_defect.location, reporter_id: @road_defect.reporter_id }
    assert_redirected_to road_defect_path(assigns(:road_defect))
  end

  test "should destroy road_defect" do
    assert_difference('RoadDefect.count', -1) do
      delete :destroy, id: @road_defect
    end

    assert_redirected_to road_defects_path
  end
end
