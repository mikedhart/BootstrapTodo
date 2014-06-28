require 'test_helper'

class ListInvitesControllerTest < ActionController::TestCase
  setup do
    @list_invite = list_invites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_invites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_invite" do
    assert_difference('ListInvite.count') do
      post :create, list_invite: { complete: @list_invite.complete, email: @list_invite.email, list_id: @list_invite.list_id, user_id: @list_invite.user_id }
    end

    assert_redirected_to list_invite_path(assigns(:list_invite))
  end

  test "should show list_invite" do
    get :show, id: @list_invite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_invite
    assert_response :success
  end

  test "should update list_invite" do
    patch :update, id: @list_invite, list_invite: { complete: @list_invite.complete, email: @list_invite.email, list_id: @list_invite.list_id, user_id: @list_invite.user_id }
    assert_redirected_to list_invite_path(assigns(:list_invite))
  end

  test "should destroy list_invite" do
    assert_difference('ListInvite.count', -1) do
      delete :destroy, id: @list_invite
    end

    assert_redirected_to list_invites_path
  end
end
