# ==============================================================================
# Filename: boot.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `boot.rb` file is responsible for setting up the application's LOAD_PATH.
# It initializes Bundler to manage dependencies and Bootsnap to accelerate 
# application startup times through aggressive caching.
#
# Architecture:
# - Dependencies: Loads `bundler/setup`.
# - Performance: Loads `bootsnap/setup` for bytecode caching.
# ==============================================================================

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
