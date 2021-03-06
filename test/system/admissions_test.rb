require "application_system_test_case"

class AdmissionsTest < ApplicationSystemTestCase
  setup do
    @admission = admissions(:one)
  end

  test "visiting the index" do
    visit admissions_url
    assert_selector "h1", text: "Admissions"
  end

  test "creating a Admission" do
    visit admissions_url
    click_on "New Admission"

    fill_in "Date Limit", with: @admission.DATE_LIMIT
    fill_in "Id", with: @admission.ID
    fill_in "Info Additional", with: @admission.INFO_ADDITIONAL
    fill_in "Period Inscription", with: @admission.PERIOD_INSCRIPTION
    fill_in "Requirements", with: @admission.REQUIREMENTS
    fill_in "Vacancies", with: @admission.VACANCIES
    fill_in "Value Inscription", with: @admission.VALUE_INSCRIPTION
    click_on "Create Admission"

    assert_text "Admission was successfully created"
    click_on "Back"
  end

  test "updating a Admission" do
    visit admissions_url
    click_on "Edit", match: :first

    fill_in "Date Limit", with: @admission.DATE_LIMIT
    fill_in "Id", with: @admission.ID
    fill_in "Info Additional", with: @admission.INFO_ADDITIONAL
    fill_in "Period Inscription", with: @admission.PERIOD_INSCRIPTION
    fill_in "Requirements", with: @admission.REQUIREMENTS
    fill_in "Vacancies", with: @admission.VACANCIES
    fill_in "Value Inscription", with: @admission.VALUE_INSCRIPTION
    click_on "Update Admission"

    assert_text "Admission was successfully updated"
    click_on "Back"
  end

  test "destroying a Admission" do
    visit admissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admission was successfully destroyed"
  end
end
