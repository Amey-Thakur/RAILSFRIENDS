# ==============================================================================
# Filename: filter_parameter_logging.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `filter_parameter_logging.rb` file configures security filtering for
# application logs. It ensures sensitive data like passwords and keys are
# scrubbed before being written to the log files.
#
# Architecture:
# - Privacy: Filters partial matches for `:passw`, `:secret`, `:token`, etc.
# ==============================================================================

# Be sure to restart your server when you modify this file.

# Configure parameters to be filtered from the log file. Use this to limit dissemination of
# sensitive information. See the ActiveSupport::ParameterFilter documentation for supported
# notations and behaviors.
Rails.application.config.filter_parameters += [
  :passw, :secret, :token, :_key, :crypt, :salt, :certificate, :otp, :ssn
]
