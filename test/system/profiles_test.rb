require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "About me", with: @profile.about_me
    fill_in "Age", with: @profile.age
    fill_in "Children", with: @profile.children
    fill_in "Health", with: @profile.health
    fill_in "Height", with: @profile.height
    fill_in "Location", with: @profile.location
    fill_in "Looking for", with: @profile.looking_for
    fill_in "Name", with: @profile.name
    fill_in "Pets", with: @profile.pets
    fill_in "Politics", with: @profile.politics
    fill_in "Religion", with: @profile.religion
    fill_in "Sex", with: @profile.sex
    fill_in "Starsign", with: @profile.starsign
    fill_in "Vices", with: @profile.vices
    fill_in "Work education", with: @profile.work_education
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "About me", with: @profile.about_me
    fill_in "Age", with: @profile.age
    fill_in "Children", with: @profile.children
    fill_in "Health", with: @profile.health
    fill_in "Height", with: @profile.height
    fill_in "Location", with: @profile.location
    fill_in "Looking for", with: @profile.looking_for
    fill_in "Name", with: @profile.name
    fill_in "Pets", with: @profile.pets
    fill_in "Politics", with: @profile.politics
    fill_in "Religion", with: @profile.religion
    fill_in "Sex", with: @profile.sex
    fill_in "Starsign", with: @profile.starsign
    fill_in "Vices", with: @profile.vices
    fill_in "Work education", with: @profile.work_education
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
