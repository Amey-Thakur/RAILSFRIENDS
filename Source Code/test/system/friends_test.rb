# ==============================================================================
# Filename: friends_test.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `friends_test.rb` suite performs End-to-End (E2E) testing of the
# Friends management feature. It uses a headless browser to simulate real 
# user interactions (Click, Fill, Submit) for creating, updating, and 
# deleting friends.
#
# Architecture:
# - Type: System Test (`ApplicationSystemTestCase`).
# - Driver: Selenium/Chrome.
# ==============================================================================

require "application_system_test_case"

class FriendsTest < ApplicationSystemTestCase
  setup do
    @friend = friends(:one)
  end

  test "visiting the index" do
    visit friends_url
    assert_selector "h1", text: "Friends"
  end

  test "should create friend" do
    visit friends_url
    click_on "New friend"

    fill_in "Email", with: @friend.email
    fill_in "First name", with: @friend.first_name
    fill_in "Last name", with: @friend.last_name
    fill_in "Phone", with: @friend.phone
    fill_in "Twitter", with: @friend.twitter
    click_on "Create Friend"

    assert_text "Friend was successfully created"
    click_on "Back"
  end

  test "should update Friend" do
    visit friend_url(@friend)
    click_on "Edit this friend", match: :first

    fill_in "Email", with: @friend.email
    fill_in "First name", with: @friend.first_name
    fill_in "Last name", with: @friend.last_name
    fill_in "Phone", with: @friend.phone
    fill_in "Twitter", with: @friend.twitter
    click_on "Update Friend"

    assert_text "Friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend" do
    visit friend_url(@friend)
    click_on "Destroy this friend", match: :first

    assert_text "Friend was successfully destroyed"
  end
end
