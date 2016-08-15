require 'test_helper'

class ResponsableStudentsControllerTest < ActionController::TestCase
  setup do
    @responsable_student = responsable_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responsable_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create responsable_student" do
    assert_difference('ResponsableStudent.count') do
      post :create, responsable_student: { name: @responsable_student.name, phone: @responsable_student.phone, student_id: @responsable_student.student_id }
    end

    assert_redirected_to responsable_student_path(assigns(:responsable_student))
  end

  test "should show responsable_student" do
    get :show, id: @responsable_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @responsable_student
    assert_response :success
  end

  test "should update responsable_student" do
    patch :update, id: @responsable_student, responsable_student: { name: @responsable_student.name, phone: @responsable_student.phone, student_id: @responsable_student.student_id }
    assert_redirected_to responsable_student_path(assigns(:responsable_student))
  end

  test "should destroy responsable_student" do
    assert_difference('ResponsableStudent.count', -1) do
      delete :destroy, id: @responsable_student
    end

    assert_redirected_to responsable_students_path
  end
end
