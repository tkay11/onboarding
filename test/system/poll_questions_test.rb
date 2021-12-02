require "application_system_test_case"

class PollQuestionsTest < ApplicationSystemTestCase
  setup do
    @poll_question = poll_questions(:one)
  end

  test "visiting the index" do
    visit poll_questions_url
    assert_selector "h1", text: "Poll Questions"
  end

  test "creating a Poll question" do
    visit poll_questions_url
    click_on "New Poll Question"

    click_on "Create Poll question"

    assert_text "Poll question was successfully created"
    click_on "Back"
  end

  test "updating a Poll question" do
    visit poll_questions_url
    click_on "Edit", match: :first

    click_on "Update Poll question"

    assert_text "Poll question was successfully updated"
    click_on "Back"
  end

  test "destroying a Poll question" do
    visit poll_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poll question was successfully destroyed"
  end
end
