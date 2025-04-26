require "application_system_test_case"

class PhilosophersTest < ApplicationSystemTestCase
  setup do
    @philosopher = philosophers(:one)
  end

  test "visiting the index" do
    visit philosophers_url
    assert_selector "h1", text: "Philosophers"
  end

  test "should create philosopher" do
    visit philosophers_url
    click_on "New philosopher"

    fill_in "P bio", with: @philosopher.p_bio
    fill_in "P deathyear", with: @philosopher.p_deathYear
    fill_in "P firstname", with: @philosopher.p_firstName
    fill_in "P surname", with: @philosopher.p_surname
    fill_in "P year", with: @philosopher.p_year
    click_on "Create Philosopher"

    assert_text "Philosopher was successfully created"
    click_on "Back"
  end

  test "should update Philosopher" do
    visit philosopher_url(@philosopher)
    click_on "Edit this philosopher", match: :first

    fill_in "P bio", with: @philosopher.p_bio
    fill_in "P deathyear", with: @philosopher.p_deathYear
    fill_in "P firstname", with: @philosopher.p_firstName
    fill_in "P surname", with: @philosopher.p_surname
    fill_in "P year", with: @philosopher.p_year
    click_on "Update Philosopher"

    assert_text "Philosopher was successfully updated"
    click_on "Back"
  end

  test "should destroy Philosopher" do
    visit philosopher_url(@philosopher)
    click_on "Destroy this philosopher", match: :first

    assert_text "Philosopher was successfully destroyed"
  end
end
