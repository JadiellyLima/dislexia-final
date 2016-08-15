require 'test_helper'

class MemberTeamsControllerTest < ActionController::TestCase
  setup do
    @member_team = member_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_team" do
    assert_difference('MemberTeam.count') do
      post :create, member_team: { member_team_office_id: @member_team.member_team_office_id, name: @member_team.name, phone: @member_team.phone }
    end

    assert_redirected_to member_team_path(assigns(:member_team))
  end

  test "should show member_team" do
    get :show, id: @member_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_team
    assert_response :success
  end

  test "should update member_team" do
    patch :update, id: @member_team, member_team: { member_team_office_id: @member_team.member_team_office_id, name: @member_team.name, phone: @member_team.phone }
    assert_redirected_to member_team_path(assigns(:member_team))
  end

  test "should destroy member_team" do
    assert_difference('MemberTeam.count', -1) do
      delete :destroy, id: @member_team
    end

    assert_redirected_to member_teams_path
  end
end
