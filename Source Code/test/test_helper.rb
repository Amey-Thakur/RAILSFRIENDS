# ==============================================================================
# Filename: test_helper.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `test_helper.rb` file is the central configuration for the test suite.
# It sets up the test environment, requires necessary libraries, and defines
# global test helpers that are available to all test cases.
#
# Architecture:
# - Parallelization: Configures tests to run in parallel using threads.
# - Fixtures: Loads all YAML fixtures to seed test data.
# ==============================================================================

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
