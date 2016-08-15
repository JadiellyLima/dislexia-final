require 'test_helper'

class MemberTeamOfficesControllerTest < ActionController::TestCase
  setup do
    @member_team_office = member_team_offices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_team_offices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_team_office" do
    assert_difference('MemberTeamOffice.count') do
      post :create, member_team_office: { function: @member_team_office.function }
    end

    assert_redirected_to member_team_office_path(assigns(:member_team_office))
  end

  test "should show member_team_office" do
    get :show, id: @member_team_office
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_team_office
    assert_response :success
  end

  test "should update member_team_office" do
    patch :update, id: @member_team_office, member_team_office: { function: @member_team_office.function }
    assert_redirected_to member_team_office_path(assigns(:member_team_office))
  end

  test "should destroy member_team_office" do
    assert_difference('MemberTeamOffice.count', -1) do
      delete :destroy, id: @member_team_office
    end

    assert_redirected_to member_team_offices_path
  end
end
