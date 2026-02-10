# ==============================================================================
# Filename: environment.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `environment.rb` file serves as the entry point for the Rails 
# application initialization. It loads the `application.rb` configuration 
# and triggers the final boot sequence.
#
# Architecture:
# - Initialization: Invokes `Rails.application.initialize!`.
# ==============================================================================

# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
