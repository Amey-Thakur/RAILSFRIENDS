# ==============================================================================
# Filename: permissions_policy.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `permissions_policy.rb` file defines the HTTP Permissions Policy 
# (formerly Feature Policy) for the application. It controls which browser 
# features (camera, microphone, geolocation, etc.) the site is allowed to use.
#
# Architecture:
# - Security: disabling unused features (`:none`) by default (commented out).
# ==============================================================================

# Define an application-wide HTTP permissions policy. For further
# information see https://developers.google.com/web/updates/2018/06/feature-policy
#
# Rails.application.config.permissions_policy do |f|
#   f.camera      :none
#   f.gyroscope   :none
#   f.microphone  :none
#   f.usb         :none
#   f.fullscreen  :self
#   f.payment     :self, "https://secure.example.com"
# end
