require "application_system_test_case"

class QuestionType2sTest < ApplicationSystemTestCase
  setup do
    @question_type2 = question_type2s(:one)
  end

  test "visiting the index" do
    visit question_type2s_url
    assert_selector "h1", text: "Question Type2s"
  end

  test "creating a Question type2" do
    visit question_type2s_url
    click_on "New Question Type2"

    fill_in "Color", with: @question_type2.color
    fill_in "Description", with: @question_type2.description
    fill_in "Name", with: @question_type2.name
    fill_in "Sn Active Qt", with: @question_type2.sn_active_qt
    click_on "Create Question type2"

    assert_text "Question type2 was successfully created"
    click_on "Back"
  end

  test "updating a Question type2" do
    visit question_type2s_url
    click_on "Edit", match: :first

    fill_in "Color", with: @question_type2.color
    fill_in "Description", with: @question_type2.description
    fill_in "Name", with: @question_type2.name
    fill_in "Sn Active Qt", with: @question_type2.sn_active_qt
    click_on "Update Question type2"

    assert_text "Question type2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Question type2" do
    visit question_type2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question type2 was successfully destroyed"
  end
end
