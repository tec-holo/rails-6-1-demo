require "application_system_test_case"

class SrtsTest < ApplicationSystemTestCase
  setup do
    @srt = srts(:one)
  end

  test "visiting the index" do
    visit srts_url
    assert_selector "h1", text: "Srts"
  end

  test "creating a Srt" do
    visit srts_url
    click_on "New Srt"

    fill_in "Link name", with: @srt.link_name
    fill_in "Paste link", with: @srt.paste_link
    click_on "Create Srt"

    assert_text "Srt was successfully created"
    click_on "Back"
  end

  test "updating a Srt" do
    visit srts_url
    click_on "Edit", match: :first

    fill_in "Link name", with: @srt.link_name
    fill_in "Paste link", with: @srt.paste_link
    click_on "Update Srt"

    assert_text "Srt was successfully updated"
    click_on "Back"
  end

  test "destroying a Srt" do
    visit srts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Srt was successfully destroyed"
  end
end
