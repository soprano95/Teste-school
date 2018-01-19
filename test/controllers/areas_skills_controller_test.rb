require 'test_helper'

class AreasSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @areas_skill = areas_skills(:one)
  end

  test "should get index" do
    get areas_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_areas_skill_url
    assert_response :success
  end

  test "should create areas_skill" do
    assert_difference('AreasSkill.count') do
      post areas_skills_url, params: { areas_skill: { areas_skill_name: @areas_skill.areas_skill_name } }
    end

    assert_redirected_to areas_skill_url(AreasSkill.last)
  end

  test "should show areas_skill" do
    get areas_skill_url(@areas_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_areas_skill_url(@areas_skill)
    assert_response :success
  end

  test "should update areas_skill" do
    patch areas_skill_url(@areas_skill), params: { areas_skill: { areas_skill_name: @areas_skill.areas_skill_name } }
    assert_redirected_to areas_skill_url(@areas_skill)
  end

  test "should destroy areas_skill" do
    assert_difference('AreasSkill.count', -1) do
      delete areas_skill_url(@areas_skill)
    end

    assert_redirected_to areas_skills_url
  end
end
