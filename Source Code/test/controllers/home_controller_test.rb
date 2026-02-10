# ==============================================================================
# Filename: home_controller_test.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `home_controller_test.rb` suite validates the functionality of the
# `HomeController`. It verifies that public pages like the landing page 
# are accessible.
#
# Architecture:
# - Type: Integration Test (`ActionDispatch::IntegrationTest`).
# - Coverage: Tests `index` action.
# ==============================================================================

require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end
end
