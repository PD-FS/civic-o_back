require "application_system_test_case"

class QuestionTypesTest < ApplicationSystemTestCase
  setup do
    @question_type = question_types(:one)
  end

  test "visiting the index" do
    visit question_types_url
    assert_selector "h1", text: "Question Types"
  end

  test "creating a Question type" do
    visit question_types_url
    click_on "New Question Type"

    fill_in "Color", with: @question_type.color
    fill_in "Description", with: @question_type.description
    fill_in "Name", with: @question_type.name
    fill_in "Sn Active Qt", with: @question_type.sn_active_qt
    click_on "Create Question type"

    assert_text "Question type was successfully created"
    click_on "Back"
  end

  test "updating a Question type" do
    visit question_types_url
    click_on "Edit", match: :first

    fill_in "Color", with: @question_type.color
    fill_in "Description", with: @question_type.description
    fill_in "Name", with: @question_type.name
    fill_in "Sn Active Qt", with: @question_type.sn_active_qt
    click_on "Update Question type"

    assert_text "Question type was successfully updated"
    click_on "Back"
  end

  test "destroying a Question type" do
    visit question_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question type was successfully destroyed"
  end
end
