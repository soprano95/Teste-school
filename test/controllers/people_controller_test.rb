require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { address: @person.address, contact: @person.contact, date_nai: @person.date_nai, email: @person.email, first_name: @person.first_name, last_name: @person.last_name, lieu_nai: @person.lieu_nai, life: @person.life, middle_name: @person.middle_name, personId: @person.personId, regime_matrimonial: @person.regime_matrimonial, sexe: @person.sexe, situation_family: @person.situation_family } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address: @person.address, contact: @person.contact, date_nai: @person.date_nai, email: @person.email, first_name: @person.first_name, last_name: @person.last_name, lieu_nai: @person.lieu_nai, life: @person.life, middle_name: @person.middle_name, personId: @person.personId, regime_matrimonial: @person.regime_matrimonial, sexe: @person.sexe, situation_family: @person.situation_family } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
