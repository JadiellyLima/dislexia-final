require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get estudante" do
    get :estudante
    assert_response :success
  end

  test "should get atividades" do
    get :atividades
    assert_response :success
  end

  test "should get equipe" do
    get :equipe
    assert_response :success
  end

  test "should get pais" do
    get :pais
    assert_response :success
  end

  test "should get sobrenos" do
    get :sobrenos
    assert_response :success
  end

end
