require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { about_me: @profile.about_me, age: @profile.age, children: @profile.children, health: @profile.health, height: @profile.height, location: @profile.location, looking_for: @profile.looking_for, name: @profile.name, pets: @profile.pets, politics: @profile.politics, religion: @profile.religion, sex: @profile.sex, starsign: @profile.starsign, vices: @profile.vices, work_education: @profile.work_education } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { about_me: @profile.about_me, age: @profile.age, children: @profile.children, health: @profile.health, height: @profile.height, location: @profile.location, looking_for: @profile.looking_for, name: @profile.name, pets: @profile.pets, politics: @profile.politics, religion: @profile.religion, sex: @profile.sex, starsign: @profile.starsign, vices: @profile.vices, work_education: @profile.work_education } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
