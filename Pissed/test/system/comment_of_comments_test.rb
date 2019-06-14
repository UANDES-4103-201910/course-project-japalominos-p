require "application_system_test_case"

class CommentOfCommentsTest < ApplicationSystemTestCase
  setup do
    @comment_of_comment = comment_of_comments(:one)
  end

  test "visiting the index" do
    visit comment_of_comments_url
    assert_selector "h1", text: "Comment Of Comments"
  end

  test "creating a Comment of comment" do
    visit comment_of_comments_url
    click_on "New Comment Of Comment"

    fill_in "Body", with: @comment_of_comment.body
    click_on "Create Comment of comment"

    assert_text "Comment of comment was successfully created"
    click_on "Back"
  end

  test "updating a Comment of comment" do
    visit comment_of_comments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @comment_of_comment.body
    click_on "Update Comment of comment"

    assert_text "Comment of comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment of comment" do
    visit comment_of_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment of comment was successfully destroyed"
  end
end
