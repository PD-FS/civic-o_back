require 'test_helper'

class QuestionType2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_type2 = question_type2s(:one)
  end

  test "should get index" do
    get question_type2s_url
    assert_response :success
  end

  test "should get new" do
    get new_question_type2_url
    assert_response :success
  end

  test "should create question_type2" do
    assert_difference('QuestionType2.count') do
      post question_type2s_url, params: { question_type2: { color: @question_type2.color, description: @question_type2.description, name: @question_type2.name, sn_active_qt: @question_type2.sn_active_qt } }
    end

    assert_redirected_to question_type2_url(QuestionType2.last)
  end

  test "should show question_type2" do
    get question_type2_url(@question_type2)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_type2_url(@question_type2)
    assert_response :success
  end

  test "should update question_type2" do
    patch question_type2_url(@question_type2), params: { question_type2: { color: @question_type2.color, description: @question_type2.description, name: @question_type2.name, sn_active_qt: @question_type2.sn_active_qt } }
    assert_redirected_to question_type2_url(@question_type2)
  end

  test "should destroy question_type2" do
    assert_difference('QuestionType2.count', -1) do
      delete question_type2_url(@question_type2)
    end

    assert_redirected_to question_type2s_url
  end
end
