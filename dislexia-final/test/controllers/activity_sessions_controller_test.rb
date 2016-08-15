require 'test_helper'

class ActivitySessionsControllerTest < ActionController::TestCase
  setup do
    @activity_session = activity_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_session" do
    assert_difference('ActivitySession.count') do
      post :create, activity_session: { activity_id: @activity_session.activity_id, member_team_id: @activity_session.member_team_id, session_id: @activity_session.session_id, student_id: @activity_session.student_id }
    end

    assert_redirected_to activity_session_path(assigns(:activity_session))
  end

  test "should show activity_session" do
    get :show, id: @activity_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_session
    assert_response :success
  end

  test "should update activity_session" do
    patch :update, id: @activity_session, activity_session: { activity_id: @activity_session.activity_id, member_team_id: @activity_session.member_team_id, session_id: @activity_session.session_id, student_id: @activity_session.student_id }
    assert_redirected_to activity_session_path(assigns(:activity_session))
  end

  test "should destroy activity_session" do
    assert_difference('ActivitySession.count', -1) do
      delete :destroy, id: @activity_session
    end

    assert_redirected_to activity_sessions_path
  end
end
