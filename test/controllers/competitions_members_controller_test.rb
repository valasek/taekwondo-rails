require 'test_helper'

class CompetitionsMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competitions_member = competitions_members(:one)
  end

  test "should get index" do
    get competitions_members_url
    assert_response :success
  end

  test "should get new" do
    get new_competitions_member_url
    assert_response :success
  end

  test "should create competitions_member" do
    assert_difference('CompetitionsMember.count') do
      post competitions_members_url, params: { competitions_member: {  } }
    end

    assert_redirected_to competitions_member_url(CompetitionsMember.last)
  end

  test "should show competitions_member" do
    get competitions_member_url(@competitions_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_competitions_member_url(@competitions_member)
    assert_response :success
  end

  test "should update competitions_member" do
    patch competitions_member_url(@competitions_member), params: { competitions_member: {  } }
    assert_redirected_to competitions_member_url(@competitions_member)
  end

  test "should destroy competitions_member" do
    assert_difference('CompetitionsMember.count', -1) do
      delete competitions_member_url(@competitions_member)
    end

    assert_redirected_to competitions_members_url
  end
end
