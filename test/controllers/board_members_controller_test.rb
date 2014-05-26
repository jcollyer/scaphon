require 'test_helper'

class BoardMembersControllerTest < ActionController::TestCase
  setup do
    @board_member = board_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_member" do
    assert_difference('BoardMember.count') do
      post :create, board_member: { info: @board_member.info, name: @board_member.name, position: @board_member.position }
    end

    assert_redirected_to board_member_path(assigns(:board_member))
  end

  test "should show board_member" do
    get :show, id: @board_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_member
    assert_response :success
  end

  test "should update board_member" do
    patch :update, id: @board_member, board_member: { info: @board_member.info, name: @board_member.name, position: @board_member.position }
    assert_redirected_to board_member_path(assigns(:board_member))
  end

  test "should destroy board_member" do
    assert_difference('BoardMember.count', -1) do
      delete :destroy, id: @board_member
    end

    assert_redirected_to board_members_path
  end
end
