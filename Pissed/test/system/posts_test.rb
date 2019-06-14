require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Body", with: @post.body
    fill_in "City", with: @post.city
    fill_in "Country", with: @post.country
    fill_in "Gps location", with: @post.gps_location
    check "Mark" if @post.mark
    check "Privacy" if @post.privacy
    fill_in "Title", with: @post.title
    check "Visible" if @post.visible
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @post.body
    fill_in "City", with: @post.city
    fill_in "Country", with: @post.country
    fill_in "Gps location", with: @post.gps_location
    check "Mark" if @post.mark
    check "Privacy" if @post.privacy
    fill_in "Title", with: @post.title
    check "Visible" if @post.visible
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
