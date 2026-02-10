# ==============================================================================
# Filename: application_mailer.rb
#
# Author: Amey Thakur (https://github.com/Amey-Thakur)
#         Mega Satish (https://github.com/msatmod)
#
# Repository: https://github.com/Amey-Thakur/RAILSFRIENDS
# Release Date: 01 June 2022
# License: MIT
#
# Description:
# The `ApplicationMailer` serves as the base class for all mailers in the
# application. It defines default configurations such as the 'from' address
# and the shared layout template.
#
# Architecture:
# - Inheritance: Inherits from `ActionMailer::Base`.
# - Configuration: Sets default sender and layout.
# ==============================================================================

class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
end
