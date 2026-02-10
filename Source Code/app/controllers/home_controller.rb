# ==============================================================================
# Filename: home_controller.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `HomeController` serves the static and informational pages of the 
# application. It handles the landing experience and provides author 
# metadata through the `about` action.
#
# Architecture:
# - Views: Renders the home index and about templates.
# - Data: Stores author identity strings for the about page.
# ==============================================================================

class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "My Name is Amey Thakur..."
    @GitHub = "https://github.com/Amey-Thakur"
    @LinkedIn = "https://www.linkedin.com/in/amey-thakur"
    @Twitter = "https://twitter.com/iameythakur"
  end
end
