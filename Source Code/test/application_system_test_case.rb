# ==============================================================================
# Filename: application_system_test_case.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `application_system_test_case.rb` file serves as the base class for 
# system tests. It configures the browser driver (Selenium/Chrome) and 
# screen dimensions for simulating user interactions.
#
# Architecture:
# - Driver: Uses Selenium with Chrome.
# - Resolution: Sets virtual screen size to 1400x1400.
# ==============================================================================

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
