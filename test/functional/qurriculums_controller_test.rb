require 'test_helper'

class QurriculumsControllerTest < ActionController::TestCase
  setup do
    @qurriculum = qurriculums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qurriculums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qurriculum" do
    assert_difference('Qurriculum.count') do
      post :create, qurriculum: { vacancy: @qurriculum.vacancy }
    end

    assert_redirected_to qurriculum_path(assigns(:qurriculum))
  end

  test "should show qurriculum" do
    get :show, id: @qurriculum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qurriculum
    assert_response :success
  end

  test "should update qurriculum" do
    put :update, id: @qurriculum, qurriculum: { vacancy: @qurriculum.vacancy }
    assert_redirected_to qurriculum_path(assigns(:qurriculum))
  end

  test "should destroy qurriculum" do
    assert_difference('Qurriculum.count', -1) do
      delete :destroy, id: @qurriculum
    end

    assert_redirected_to qurriculums_path
  end
end
