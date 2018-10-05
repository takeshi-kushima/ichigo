require "application_system_test_case"

class StoriesTest < ApplicationSystemTestCase
  setup do
    @story = stories(:one)
  end

  test "visiting the index" do
    visit stories_url
    assert_selector "h1", text: "Stories"
  end

  test "creating a Story" do
    visit stories_url
    click_on "New Story"

    fill_in "Address", with: @story.address
    fill_in "Age", with: @story.age
    fill_in "Company Name", with: @story.company_name
    fill_in "Day", with: @story.day
    fill_in "Glad", with: @story.glad
    fill_in "Human", with: @story.human
    fill_in "Image", with: @story.image
    fill_in "Memo", with: @story.memo
    fill_in "Please", with: @story.please
    fill_in "Present", with: @story.present
    fill_in "Title", with: @story.title
    fill_in "What", with: @story.what
    fill_in "Work", with: @story.work
    click_on "Create Story"

    assert_text "Story was successfully created"
    click_on "Back"
  end

  test "updating a Story" do
    visit stories_url
    click_on "Edit", match: :first

    fill_in "Address", with: @story.address
    fill_in "Age", with: @story.age
    fill_in "Company Name", with: @story.company_name
    fill_in "Day", with: @story.day
    fill_in "Glad", with: @story.glad
    fill_in "Human", with: @story.human
    fill_in "Image", with: @story.image
    fill_in "Memo", with: @story.memo
    fill_in "Please", with: @story.please
    fill_in "Present", with: @story.present
    fill_in "Title", with: @story.title
    fill_in "What", with: @story.what
    fill_in "Work", with: @story.work
    click_on "Update Story"

    assert_text "Story was successfully updated"
    click_on "Back"
  end

  test "destroying a Story" do
    visit stories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Story was successfully destroyed"
  end
end
